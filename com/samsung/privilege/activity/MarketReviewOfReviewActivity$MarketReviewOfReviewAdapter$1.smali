.class Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$1;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

.field private final synthetic val$strImageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$1;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$1;->val$strImageUrl:Ljava/lang/String;

    .line 1504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$1;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$1;->val$strImageUrl:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->doViewPhotoSmart(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->access$0(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;Ljava/lang/String;)V

    .line 1507
    return-void
.end method
