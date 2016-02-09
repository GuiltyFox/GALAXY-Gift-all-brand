.class Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$1;
.super Ljava/lang/Object;
.source "MarketReviewLikeListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$1;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 139
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 143
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$1;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$1;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

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

    .line 147
    return-void
.end method
