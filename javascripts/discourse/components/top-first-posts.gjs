import Component from "@glimmer/component";
import { tracked } from "@glimmer/tracking";

export default class TopFirstPosts extends Component {
  @tracked posts = [];

  constructor() {
    super(...arguments);
    this.loadPosts();
  }

  async loadPosts() {
    let ids = [123, 456]; // replace with your topic IDs
    let posts = [];
    for (let id of ids) {
      let res = await fetch(`/t/${id}.json`);
      let data = await res.json();
      // Grab the first post
      if (data.post_stream && data.post_stream.posts.length > 0) {
        posts.push(data.post_stream.posts[0]);
      }
    }
    this.posts = posts;
  }
}
