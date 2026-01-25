import { apiInitializer } from "discourse/lib/api";
import TopFirstPosts from "../components/top-first-posts";

export default apiInitializer((api) => {
  api.renderInOutlet("discovery-list-container-top", TopFirstPosts);
});
