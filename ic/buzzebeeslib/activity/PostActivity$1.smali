.class Lic/buzzebeeslib/activity/PostActivity$1;
.super Ljava/lang/Object;
.source "PostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/PostActivity;->doKeyboardIcon(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/PostActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/PostActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/PostActivity$1;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 791
    new-instance v1, Lic/buzzebeeslib/adapter/KeyboardStickerSetAdapter;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PostActivity$1;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gActivity:Lic/buzzebeeslib/activity/PostActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PostActivity;->access$4(Lic/buzzebeeslib/activity/PostActivity;)Lic/buzzebeeslib/activity/PostActivity;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity$1;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/PostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lic/buzzebeeslib/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/PostActivity$1;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v4}, Lic/buzzebeeslib/activity/PostActivity;->access$5(Lic/buzzebeeslib/activity/PostActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lic/buzzebeeslib/adapter/KeyboardStickerSetAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/bitmapfun/util/ImageFetcher;)V

    .line 792
    .local v1, "adapterStickerSet":Lic/buzzebeeslib/adapter/KeyboardStickerSetAdapter;
    iget-object v2, p0, Lic/buzzebeeslib/activity/PostActivity$1;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gGridStickerSet:Landroid/widget/GridView;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PostActivity;->access$6(Lic/buzzebeeslib/activity/PostActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 794
    iget-object v2, p0, Lic/buzzebeeslib/activity/PostActivity$1;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/PostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6c

    .line 795
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity$1;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PostActivity$1;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/PostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/bean/StickerSet;

    iget-object v2, v2, Lic/buzzebeeslib/bean/StickerSet;->stickers:Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/PostActivity;->access$7(Lic/buzzebeeslib/activity/PostActivity;Ljava/util/ArrayList;)V

    .line 796
    new-instance v0, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PostActivity$1;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gActivity:Lic/buzzebeeslib/activity/PostActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PostActivity;->access$4(Lic/buzzebeeslib/activity/PostActivity;)Lic/buzzebeeslib/activity/PostActivity;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity$1;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gArrayStickers:Ljava/util/ArrayList;
    invoke-static {v3}, Lic/buzzebeeslib/activity/PostActivity;->access$8(Lic/buzzebeeslib/activity/PostActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/PostActivity$1;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v4}, Lic/buzzebeeslib/activity/PostActivity;->access$5(Lic/buzzebeeslib/activity/PostActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/bitmapfun/util/ImageFetcher;)V

    .line 797
    .local v0, "adapterSticker":Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;
    iget-object v2, p0, Lic/buzzebeeslib/activity/PostActivity$1;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gGridSticker:Landroid/widget/GridView;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PostActivity;->access$9(Lic/buzzebeeslib/activity/PostActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 799
    .end local v0    # "adapterSticker":Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;
    :cond_6c
    return-void
.end method
