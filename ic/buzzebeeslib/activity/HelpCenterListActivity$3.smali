.class Lic/buzzebeeslib/activity/HelpCenterListActivity$3;
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
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$3;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$3;->val$activityRootView:Landroid/widget/LinearLayout;

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 5

    .prologue
    .line 486
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$3;->val$activityRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$3;->val$activityRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sub-int v0, v2, v3

    .line 489
    .local v0, "heightDiff":I
    const/16 v2, 0x96

    if-le v0, v2, :cond_3f

    .line 490
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$3;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lic/buzzebeeslib/LibUserLogin;->SetKeyboardHeight(Landroid/content/Context;I)Z

    .line 491
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$3;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getStatusBarHeight()I

    move-result v3

    sub-int v3, v0, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 492
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$3;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentImage:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$22(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$3;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentSticker:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$23(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3f
    return-void
.end method
