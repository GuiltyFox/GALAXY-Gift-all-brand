.class Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener$1;
.super Ljava/lang/Object;
.source "HelpCenterListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;

    .line 1840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 1844
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1845
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->etTextMessage:Landroid/widget/EditText;
    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$21(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1846
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentImage:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$22(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1847
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentSticker:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$23(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1848
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->etTextMessage:Landroid/widget/EditText;
    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$21(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1849
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->deleteMedia(Landroid/view/View;)V

    .line 1850
    return-void
.end method
