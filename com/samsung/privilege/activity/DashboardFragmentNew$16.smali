.class Lcom/samsung/privilege/activity/DashboardFragmentNew$16;
.super Ljava/lang/Object;
.source "DashboardFragmentNew.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemSmall(Lcom/samsung/privilege/bean/DashboardItem;Lcom/samsung/privilege/bean/DashboardItem;ZZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

.field private final synthetic val$dashboardItemA:Lcom/samsung/privilege/bean/DashboardItem;

.field private final synthetic val$imgPhotoA:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/widget/ImageView;Lcom/samsung/privilege/bean/DashboardItem;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$16;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    iput-object p2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$16;->val$imgPhotoA:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$16;->val$dashboardItemA:Lcom/samsung/privilege/bean/DashboardItem;

    .line 1804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 6

    .prologue
    .line 1807
    iget-object v3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$16;->val$imgPhotoA:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1809
    iget-object v3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$16;->val$imgPhotoA:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    .line 1810
    .local v1, "gLayoutImageWidth":I
    const/4 v0, 0x0

    .line 1811
    .local v0, "gLayoutImageHeight":I
    iget-object v3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$16;->val$dashboardItemA:Lcom/samsung/privilege/bean/DashboardItem;

    iget-object v3, v3, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "menu"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1812
    mul-int/lit8 v3, v1, 0x1

    div-int/lit8 v0, v3, 0x1

    .line 1817
    :goto_24
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1819
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$16;->val$imgPhotoA:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1821
    return-void

    .line 1814
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2f
    mul-int/lit8 v3, v1, 0x2

    div-int/lit8 v0, v3, 0x3

    goto :goto_24
.end method
