// theme/desktop/discovery-list-container-top.gjs

import Component from "@glimmer/component";
import { tracked } from "@glimmer/tracking";

class FirstPosts extends Component {
  @tracked posts = [];

  constructor() {
    super(...arguments);
    this.loadPosts();
  }

  async loadPosts() {
    let topicIds = [98, 239]; // ← Replace these with your topic IDs
    let posts = [];
    for (let id of topicIds) {
      const res = await fetch(`/t/${id}.json`);
      const data = await res.json();
      if (data.post_stream && data.post_stream.posts.length > 0) {
        posts.push(data.post_stream.posts[0]);
      }
    }
    this.posts = posts;
  }

  <template>
    {{#each this.posts as |post|}}
      <div class="first-post-preview">
        <h4>{{post.topic_title}}</h4>
        {{{post.cooked}}}
      </div>
    {{/each}}
  </template>;
}

export default FirstPosts;
