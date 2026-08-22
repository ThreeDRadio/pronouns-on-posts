import Component from "@glimmer/component";

export default class PronounsOnPosts extends Component {
  // constructor() {
  //   super(...arguments);
  //   console.log("Discourse Post Meta User:", this.args.user);
  //   console.log("Discourse Post Meta Post:", this.args.post);
  // }

  get username() {
    return this.args.user?.username;
  }

  get name() {
    return this.args.user?.name;
  }

  get title() {
    return this.args.user?.title;
  }

  get pronouns() {
    // Access the post or user object from the passed context
    return this.args.post?.pronouns || "";
  }

  <template>
    <div class="names trigger-user-card">
      <span class="first username">

        <a
          href="/u/{{this.username}}"
          data-user-card={{this.username}}
          aria-label="{{this.username}}'s profile"
          tabindex="0"
        >
          {{this.username}}
        </a>

      </span>
      <span class="second full-name">

        <a
          href="/u/{{this.username}}"
          data-user-card={{this.username}}
          aria-hidden="true"
          tabindex="-1"
        >
          {{this.name}}
        </a>

      </span>
      <span>
        ({{this.pronouns}})
      </span>
      <span class="user-title user-title--archiving-committee-member">
        {{this.title}}
      </span>
    </div>
  </template>
}
