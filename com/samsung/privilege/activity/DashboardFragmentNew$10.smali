.class Lcom/samsung/privilege/activity/DashboardFragmentNew$10;
.super Ljava/lang/Object;
.source "DashboardFragmentNew.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemMedium(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

.field private final synthetic val$imgPhoto:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/widget/ImageView;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$10;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    iput-object p2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$10;->val$imgPhoto:Landroid/widget/ImageView;

    .line 1605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 5

    .prologue
    .line 1608
    iget-object v3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$10;->val$imgPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1610
    iget-object v3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$10;->val$imgPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    .line 1611
    .local v1, "gLayoutImageWidth":I
    mul-int/lit8 v3, v1, 0x1

    div-int/lit8 v0, v3, 0x4

    .line 1612
    .local v0, "gLayoutImageHeight":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1614
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$10;->val$imgPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1615
    return-void
.end method
