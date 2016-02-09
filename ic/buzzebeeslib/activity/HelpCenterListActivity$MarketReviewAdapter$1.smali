.class Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$1;
.super Ljava/lang/Object;
.source "HelpCenterListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;

.field private final synthetic val$review:Lic/buzzebeeslib/bean/CampaignReview;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;Lic/buzzebeeslib/bean/CampaignReview;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;

    iput-object p2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$1;->val$review:Lic/buzzebeeslib/bean/CampaignReview;

    .line 1338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1340
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;

    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$1;->val$review:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v1, v1, Lic/buzzebeeslib/bean/CampaignReview;->ImageUrl:Ljava/lang/String;

    # invokes: Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->doViewPhotoSmart(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;Ljava/lang/String;)V

    .line 1341
    return-void
.end method
