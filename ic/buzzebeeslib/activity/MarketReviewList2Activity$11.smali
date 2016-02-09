.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$11;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity;->initialLayoutComment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$11;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    .line 2250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2252
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$11;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->etTextMessage:Landroid/widget/EditText;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$30(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2254
    .local v0, "stringComment":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_25

    .line 2255
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$11;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$11;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    sget v3, Lic/buzzebeeslib/R$string;->post_require_text:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->showToast(Ljava/lang/String;)V

    .line 2258
    :cond_25
    return-void
.end method
