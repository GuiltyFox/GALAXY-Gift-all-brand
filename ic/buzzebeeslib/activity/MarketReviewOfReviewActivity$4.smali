.class Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$4;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->addHeaderAndFooter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$4;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 678
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$4;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    const/4 v1, 0x1

    # invokes: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->loadReviewOfReview(Z)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$14(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Z)V

    .line 679
    return-void
.end method
