/**
 * @param  {String} selector
 * @returns  {Logical}
 */
function isVisible(selector) {
  var el = typeof selector == "string" ? (el = $(selector)) : selector;
  return el.is(":visible");
}
function cardToggleSelector(id) {
  return `#${id} > .card-header > .card-tools > .btn-tool`;
}

function cardStatusOpen(id, immediate = false) {
  let sel = cardToggleSelector(id);
  let state_open = $(sel + " > .fas").hasClass("fa-minus");
  if (immediate) {
    state_open = !state_open;
  }
  return state_open;
}

function cardOpen(id, action = "open") {
  let sel = cardToggleSelector(id);
  let state_open = $(sel + " > .fas").hasClass("fa-minus");
  switch (action) {
    case "open":
      if (!state_open) {
        $(sel).click();
      }
      break;
    case "close":
      if (state_open) {
        $(sel).click();
      }
      break;
    case "toggle":
      $(sel).click();
      break;
  }
}
/**
 * @param  {String} str Character to encode
 * @returns  {String} Encoded string
 */
function encode_math(str) {
  str = str.replace("<", "&lt;");
  str = str.replace(">", "&gt;");
  return str;
}

/**
 * @param  {String} str Character to decode
 * @returns  {String} decoded string
 */
function decode_math(str) {
  str = str.replace("&lt;", "<");
  str = str.replace("&gt;", ">");
  return str;
}

/**
 * Ensure a string is an ID (#id), or remove the hash from and ID string.
* @param  {String} id An id to check for the hash (#) symbol
* @param {Boolean} rm_hash whether to remove the hash symbol if it has it
* @returns  {String} Returns an id String with or without the hash based on the `rm_hash` argument
* @example
id_check('blah')
id_check('#blah', rm_hash = true)
*/
function id_check(id, rm_hash = false) {
  let reg = new RegExp("^#");
  if (!reg.test(id) && !rm_hash) {
    id = "#" + id;
  } else if (rm_hash) {
    if (reg.test(id)) {
      id = id.substring(1);
    }
  }
  return id;
}

function displayElementRelative(id, position, content, duration) {
  const targetElement = document.getElementById(id);
  if (!targetElement) {
    console.error(`Element with id "${id}" not found.`);
    return;
  }

  debugger;
  const relativeElement = document.createElement("div");
  relativeElement.innerHTML = content;
  relativeElement.style.position = "absolute"; // Crucial for positioning relative to viewport or positioned ancestor
  relativeElement.style.zIndex = "1000"; // Ensure it's above other elements
  document.body.appendChild(relativeElement);

  const targetRect = targetElement.getBoundingClientRect();
  const relativeWidth = relativeElement.offsetWidth;
  const relativeHeight = relativeElement.offsetHeight;

  let top, right, bottom, left;

  switch (position.toLowerCase()) {
    case "top":
      top = targetRect.top - relativeHeight - 10; // 10px margin
      left = targetRect.left + (targetRect.width - relativeWidth) / 2;
      break;
    case "right":
      left = targetRect.right + 10;
      top = targetRect.top + (targetRect.height - relativeHeight) / 2;
      break;
    case "bottom":
      top = targetRect.bottom + 10;
      left = targetRect.left + (targetRect.width - relativeWidth) / 2;
      break;
    case "left":
      left = targetRect.left - relativeWidth - 10;
      top = targetRect.top + (targetRect.height - relativeHeight) / 2;
      break;
    default:
      console.error(
        `Invalid position "${position}". Use 'top', 'right', 'bottom', or 'left'.`
      );
      document.body.removeChild(relativeElement);
      return;
  }

  relativeElement.style.top = `${top}px`;
  relativeElement.style.left = `${left}px`;

  // Fade out animation
  relativeElement.style.opacity = "1";
  relativeElement.style.transition = `opacity ${duration / 1000}s ease-in-out`;

  // Persist the element indefinitely if duration is 0 or FALSE
  if (duration) {
    // Otherwise, fade out and remove the element after the specified duration
    setTimeout(() => {
      relativeElement.style.opacity = "0";
      setTimeout(() => {
        if (document.body.contains(relativeElement)) {
          document.body.removeChild(relativeElement);
        }
      }, duration);
    }, 0); // Start fade out after a short delay (or immediately)
  }
}

// Example usage:
// Create a target element in your HTML:
// <div id="myElement" style="width: 100px; height: 100px; background-color: lightblue; position: relative;">Target</div>

// Call the function:
// displayElementRelative('myElement', 'above', 'This is above!', 2000); // Display for 2 seconds
// displayElementRelative('myElement', 'right', 'To the right.', 3000);
// displayElementRelative('myElement', 'bottom', '<button>Click Me!</button>', 1500);
// displayElementRelative('myElement', 'left', 'On the left side.', 2500);
