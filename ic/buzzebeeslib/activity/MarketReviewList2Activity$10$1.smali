.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$10$1;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$10$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;

    .line 2221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    .line 2224
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$10$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2225
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$10$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->etTextMessage:Landroid/widget/EditText;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$30(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2226
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$10$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentImage:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$26(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2227
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$10$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentSticker:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$27(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2228
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$10$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->doPost(Landroid/view/View;)V

    .line 2229
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$10$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->etTextMessage:Landroid/widget/EditText;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$30(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2230
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$10$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->deleteMedia(Landroid/view/View;)V

    .line 2232
    return-void
.end method
