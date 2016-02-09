.class Lic/buzzebeeslib/activity/PostActivity$3;
.super Ljava/lang/Object;
.source "PostActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/PostActivity;->doKeyboardIcon(Landroid/view/View;)V
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
.field final synthetic this$0:Lic/buzzebeeslib/activity/PostActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/PostActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/PostActivity$3;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
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
    .line 813
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lic/buzzebeeslib/activity/PostActivity$3;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    iget-object v1, p0, Lic/buzzebeeslib/activity/PostActivity$3;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/PostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lic/buzzebeeslib/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/StickerSet;

    iget-object v1, v1, Lic/buzzebeeslib/bean/StickerSet;->stickers:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lic/buzzebeeslib/activity/PostActivity;->access$7(Lic/buzzebeeslib/activity/PostActivity;Ljava/util/ArrayList;)V

    .line 814
    new-instance v0, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;

    iget-object v1, p0, Lic/buzzebeeslib/activity/PostActivity$3;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gActivity:Lic/buzzebeeslib/activity/PostActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PostActivity;->access$4(Lic/buzzebeeslib/activity/PostActivity;)Lic/buzzebeeslib/activity/PostActivity;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/PostActivity$3;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gArrayStickers:Ljava/util/ArrayList;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PostActivity;->access$8(Lic/buzzebeeslib/activity/PostActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity$3;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v3}, Lic/buzzebeeslib/activity/PostActivity;->access$5(Lic/buzzebeeslib/activity/PostActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/bitmapfun/util/ImageFetcher;)V

    .line 815
    .local v0, "adapterSticker":Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;
    iget-object v1, p0, Lic/buzzebeeslib/activity/PostActivity$3;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gGridSticker:Landroid/widget/GridView;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PostActivity;->access$9(Lic/buzzebeeslib/activity/PostActivity;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 816
    return-void
.end method
