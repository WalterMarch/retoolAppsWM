const appDev = {{inputDeveloper.value}};

let adminInCurrent;

if (!Boolean(appDev)) {
  adminInCurrent = false;
} else {
  const currentUserGroups = {{ current_user.groups }};
  const currentUserEmail = {{ current_user.email }};

  const adminInGroups = Boolean(filterByValue(currentUserGroups, appDev).length);
  
  const adminInEmail = (appDev == currentUserEmail);
  
  adminInCurrent = adminInGroups || adminInEmail;  
}

return adminInCurrent

function filterByValue(array, string) {
    return array.filter(obj =>
        Object.keys(obj).some(key => String(obj[key]).toLowerCase().includes(string.toLowerCase())));
}