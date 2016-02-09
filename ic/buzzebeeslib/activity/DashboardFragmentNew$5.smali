.class Lic/buzzebeeslib/activity/DashboardFragmentNew$5;
.super Ljava/lang/Object;
.source "DashboardFragmentNew.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/DashboardFragmentNew;->InitialDashboardItemBigPager(Lic/buzzebeeslib/bean/DashboardItem;ZZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

.field private final synthetic val$pagerPhoto:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$5;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

    iput-object p2, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$5;->val$pagerPhoto:Landroid/support/v4/view/ViewPager;

    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 6

    .prologue
    .line 810
    iget-object v3, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$5;->val$pagerPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 812
    iget-object v3, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$5;->val$pagerPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v1

    .line 813
    .local v1, "gLayoutImageWidth":I
    mul-int/lit8 v3, v1, 0x2

    div-int/lit8 v0, v3, 0x3

    .line 814
    .local v0, "gLayoutImageHeight":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 816
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x3

    sget v4, Lic/buzzebeeslib/R$idDashboardItem;->viewTop:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 817
    iget-object v3, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$5;->val$pagerPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    return-void
.end method
