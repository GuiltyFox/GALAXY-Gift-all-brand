.class Lic/buzzebeeslib/activity/HelpCenterListActivity$12;
.super Ljava/lang/Object;
.source "HelpCenterListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity;->doLike(ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

.field private final synthetic val$isLike:Z

.field private final synthetic val$tagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$12;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    iput-boolean p2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$12;->val$isLike:Z

    iput-object p3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$12;->val$tagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    .line 1446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1453
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$12;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    iget-boolean v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$12;->val$isLike:Z

    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$12;->val$tagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    # invokes: Lic/buzzebeeslib/activity/HelpCenterListActivity;->actionLike(ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$33(Lic/buzzebeeslib/activity/HelpCenterListActivity;ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    .line 1454
    return-void
.end method
