.class Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$2;
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


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$2;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;

    .line 1385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1389
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$2;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->doSeeMore(Landroid/view/View;)V

    .line 1390
    return-void
.end method
