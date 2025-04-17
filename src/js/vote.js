document.addEventListener("DOMContentLoaded", function () {
  const buttons = document.querySelectorAll('button[id^="option"]');
  const numberInput = document.getElementById("id_number");
  const submitButton = document.getElementById("submit");
  const thankYouMessage = document.createElement("p");

  let selectedOption = null;

  buttons.forEach(function (button) {
    button.addEventListener("click", function (event) {
      // removing hightlight from previously selected option
      if (selectedOption) {
        document
          .getElementById(`option${selectedOption}`)
          .classList.remove("selected");
      }

      // save newly selected option
      selectedOption = event.target.id.replace("option", "");

      // highlight selected option
      event.target.classList.add("selected");

      // active submit button if all conditions met
      activateSubmitButton();
    });
  });

  numberInput.addEventListener("input", function () {
    // active submit button if all conditions met
    activateSubmitButton();
  });

  submitButton.addEventListener("click", function () {
    if (!this.disabled) {
      sendData(selectedOption);
    }
  });

  function activateSubmitButton() {
    if (numberInput.value.trim().length > 4 && selectedOption !== null) {
      submitButton.disabled = false;
      submitButton.classList.add("active");
    } else {
      submitButton.disabled = true;
      submitButton.classList.remove("active");
    }
  }

  function sendData(option) {
    const formData = new FormData();
    formData.append("id_answer", option);
    formData.append("id_number", numberInput.value);

    fetch("app/vote.php", {
      method: "POST",
      body: formData,
    })
      .then((response) => response.text())
      .then((data) => {
        console.log(data);

        // thank you message
        showThankYouMessage();
        clearForm();
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  }

  function showThankYouMessage() {
    thankYouMessage.textContent = "Thank YOU for your vote!";
    submitButton.after(thankYouMessage);
    thankYouMessage.classList.add("stamp");

    setTimeout(() => {
      thankYouMessage.classList.add("fade-out");
      setTimeout(() => {
        thankYouMessage.remove(); // remove p after animation
      }, 2000); // animation duration
    }, 6000); // delay before disappearance animation
  }

  function clearForm() {
    selectedOption = null;
    numberInput.value = ""; // clear ID
    buttons.forEach((button) => button.classList.remove("selected")); // remove highlight
    submitButton.disabled = true; // deactivate submit button
    submitButton.classList.remove("active");
  }
});
