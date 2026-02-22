const PROJECT_PREFIX = "roomify_project_";

const jsonError = (status, message, extra = {}) => {
  return new Response(JSON.stringify({ error: message, ...extra }), {
    status,
    headers: {
      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*",
    },
  });
};

const getUserId = async (userPuter) => {
  try {
    const user = await userPuter.auth.getUser();

    return user?.uuid || null;
  } catch {
    return null;
  }
};
