.class Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$2;
.super Ljava/lang/Object;
.source "MarketReviewLikeListActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 152
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 153
    sparse-switch p2, :sswitch_data_2e

    .line 163
    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0

    .line 156
    :sswitch_b
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->etTextSearch:Landroid/widget/EditText;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->access$5(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    # invokes: Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->showWhoClickLike(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->access$6(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 158
    const/4 v0, 0x1

    goto :goto_a

    .line 153
    :sswitch_data_2e
    .sparse-switch
        0x17 -> :sswitch_b
        0x42 -> :sswitch_b
    .end sparse-switch
.end method
