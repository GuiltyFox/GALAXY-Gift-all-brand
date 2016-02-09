.class Lic/buzzebeeslib/activity/HelpCenterListActivity$2;
.super Ljava/lang/Object;
.source "HelpCenterListActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

.field private final synthetic val$activityRootView:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;Landroid/widget/LinearLayout;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$2;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$2;->val$activityRootView:Landroid/widget/LinearLayout;

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    .line 469
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 470
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$2;->val$activityRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 472
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$2;->val$activityRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 473
    .local v0, "heightDiff":I
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$2;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    invoke-static {v2, v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$25(Lic/buzzebeeslib/activity/HelpCenterListActivity;I)V

    .line 474
    const/16 v2, 0x64

    if-le v0, v2, :cond_38

    .line 476
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$2;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentImage:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$22(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 477
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$2;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentSticker:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$23(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 481
    :cond_38
    return-void
.end method
