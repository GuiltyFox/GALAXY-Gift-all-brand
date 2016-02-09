.class Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$5;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->addHeaderAndFooter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$5;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$5;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    const/4 v1, 0x1

    # invokes: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->loadReviewOfReview(Z)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$13(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Z)V

    .line 639
    return-void
.end method
