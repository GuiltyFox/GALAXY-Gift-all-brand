.class Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener$1;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener$1;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;

    .line 1106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener$1;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;->access$0(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->doRefresh(Landroid/view/View;)V

    .line 1109
    return-void
.end method
