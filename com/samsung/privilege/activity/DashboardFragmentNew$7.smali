.class Lcom/samsung/privilege/activity/DashboardFragmentNew$7;
.super Ljava/lang/Object;
.source "DashboardFragmentNew.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemBigPager(Lcom/samsung/privilege/bean/DashboardItem;ZZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

.field private final synthetic val$pagerPhoto:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$7;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    iput-object p2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$7;->val$pagerPhoto:Landroid/support/v4/view/ViewPager;

    .line 1455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 6

    .prologue
    .line 1458
    iget-object v3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$7;->val$pagerPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1460
    iget-object v3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$7;->val$pagerPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v1

    .line 1461
    .local v1, "gLayoutImageWidth":I
    mul-int/lit8 v3, v1, 0x2

    div-int/lit8 v0, v3, 0x3

    .line 1462
    .local v0, "gLayoutImageHeight":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1464
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x3

    const/high16 v4, 0x7f1c0000

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1465
    iget-object v3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$7;->val$pagerPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1466
    return-void
.end method
