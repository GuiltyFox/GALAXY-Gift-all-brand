.class Lic/buzzebeeslib/activity/HelpCenterListActivity$10;
.super Ljava/lang/Object;
.source "HelpCenterListActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity;->doLikeAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

.field private final synthetic val$isLike:Z

.field private final synthetic val$layoutLike:Landroid/widget/ImageView;

.field private final synthetic val$tagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;Lic/buzzebeeslib/bean/TagLikeCampaignReview;ZLandroid/widget/ImageView;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$10;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$10;->val$tagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    iput-boolean p3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$10;->val$isLike:Z

    iput-object p4, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$10;->val$layoutLike:Landroid/widget/ImageView;

    .line 1131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 7
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v4, 0x1

    .line 1134
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$10;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$10;->val$tagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    # invokes: Lic/buzzebeeslib/activity/HelpCenterListActivity;->processLikeAction(Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    invoke-static {v1, v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$11(Lic/buzzebeeslib/activity/HelpCenterListActivity;Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    .line 1135
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$10;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    iget-boolean v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$10;->val$isLike:Z

    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$10;->val$tagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    invoke-virtual {v1, v2, v3}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->doLike(ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    .line 1137
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$10;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$anim;->bz_like_review_step_2:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1138
    .local v0, "likeClickAnimation2":Landroid/view/animation/Animation;
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1139
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1140
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1142
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$10;->val$layoutLike:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1143
    new-instance v1, Lic/buzzebeeslib/activity/HelpCenterListActivity$10$1;

    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$10;->val$layoutLike:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity$10$1;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$10;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1159
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1164
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1168
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$10;->val$layoutLike:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1169
    return-void
.end method
