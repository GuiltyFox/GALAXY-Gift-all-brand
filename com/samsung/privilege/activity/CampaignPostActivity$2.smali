.class Lcom/samsung/privilege/activity/CampaignPostActivity$2;
.super Ljava/lang/Object;
.source "CampaignPostActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignPostActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

.field private final synthetic val$gridSticker:Landroid/widget/GridView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignPostActivity;Landroid/widget/GridView;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$2;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$2;->val$gridSticker:Landroid/widget/GridView;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Lcom/samsung/privilege/adapter/KeyboardStickerAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$2;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$2;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/StickerSet;

    iget-object v1, v1, Lcom/samsung/privilege/bean/StickerSet;->stickers:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v1}, Lcom/samsung/privilege/adapter/KeyboardStickerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 323
    .local v0, "adapterSticker":Lcom/samsung/privilege/adapter/KeyboardStickerAdapter;
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$2;->val$gridSticker:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 325
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$2;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    invoke-static {v1, p3}, Lcom/samsung/privilege/activity/CampaignPostActivity;->access$6(Lcom/samsung/privilege/activity/CampaignPostActivity;I)V

    .line 326
    return-void
.end method
