.class Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$2;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;

    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 883
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/util/StickerUtil;->GetStickerSets(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->showToast(Ljava/lang/String;)V

    .line 884
    return-void
.end method
