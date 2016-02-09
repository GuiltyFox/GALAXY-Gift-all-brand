.class Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener$1;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener$1;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;

    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener$1;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # invokes: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->initialLayout()V
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$12(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)V

    .line 1149
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener$1;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    const/4 v1, 0x0

    # invokes: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->loadReviewOfReview(Z)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$13(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Z)V

    .line 1150
    return-void
.end method
