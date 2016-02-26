.class Lcom/samsung/privilege/activity/CampaignDetailActivity$22$1;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$22;

.field private final synthetic val$imgGallery01:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$22;Landroid/widget/ImageView;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$22;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$1;->val$imgGallery01:Landroid/widget/ImageView;

    .line 2969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 5

    .prologue
    .line 2973
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$1;->val$imgGallery01:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2975
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$1;->val$imgGallery01:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    .line 2976
    .local v1, "gLayoutImageWidth":I
    mul-int/lit8 v3, v1, 0x2

    div-int/lit8 v0, v3, 0x3

    .line 2977
    .local v0, "gLayoutImageHeight":I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2978
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$1;->val$imgGallery01:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2979
    return-void
.end method
