.class Lic/buzzebeeslib/activity/HelpCenterListActivity$13;
.super Ljava/lang/Object;
.source "HelpCenterListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity;->saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$13;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    .line 1964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 1968
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$13;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1969
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$13;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->etTextMessage:Landroid/widget/EditText;
    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$21(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1970
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$13;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentImage:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$22(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1971
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$13;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentSticker:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$23(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1972
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$13;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->etTextMessage:Landroid/widget/EditText;
    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$21(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1973
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$13;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->deleteMedia(Landroid/view/View;)V

    .line 1974
    return-void
.end method
