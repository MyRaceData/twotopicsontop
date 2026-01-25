import { apiInitializer } from "discourse/lib/api";
import FirstPosts from "discourse/components"; // path depends on your theme structure

export default apiInitializer((api) => {
  api.renderInOutlet("discovery-list-container-top", FirstPosts);
});
