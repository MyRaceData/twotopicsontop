import { apiInitializer } from "discourse/lib/api";
import FirstPosts from "discourse/components/first-posts"; // path depends on your theme structure

export default apiInitializer((api) => {
  api.renderInOutlet("discovery-list-container-top", FirstPosts);
});
