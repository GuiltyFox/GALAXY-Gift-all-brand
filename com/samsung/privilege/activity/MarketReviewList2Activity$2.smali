.class Lcom/samsung/privilege/activity/MarketReviewList2Activity$2;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Lcom/samsung/privilege/control/PullToRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MarketReviewList2Activity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$2;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .registers 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$2;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->doRefresh(Landroid/view/View;)V

    .line 357
    return-void
.end method
