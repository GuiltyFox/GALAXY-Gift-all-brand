.class public Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "StampDetailGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/StampSticker;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/StampCampaign;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field d:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;ZLandroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/StampSticker;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/StampCampaign;",
            ">;Z",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1234
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 1235
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;->a:Ljava/util/ArrayList;

    .line 1236
    iput-boolean p3, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;->c:Z

    .line 1237
    iput-object p4, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;->d:Landroid/content/Context;

    .line 1238
    iput-object p2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;->b:Ljava/util/ArrayList;

    .line 1239
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;
    .registers 6

    .prologue
    .line 1255
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1256
    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;Landroid/view/View;)V

    .line 1257
    return-object v1
.end method

.method public a(Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;I)V
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/16 v7, 0xa

    const/16 v6, 0x1e

    const/16 v5, 0x14

    .line 1262
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/StampSticker;

    .line 1264
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->d:I

    const/4 v4, -0x1

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1265
    iget-object v2, p1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1267
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->d:I

    sget v4, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->d:I

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1268
    iget-object v2, p1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1270
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    .line 1271
    packed-switch v1, :pswitch_data_124

    .line 1285
    iget-object v1, p1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1288
    :goto_41
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_f3

    .line 1289
    iget-boolean v1, v0, Lcom/bzbs/bean/StampSticker;->enable:Z

    if-ne v1, v8, :cond_de

    .line 1292
    iget-object v1, p1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1319
    :goto_51
    iget-object v1, v0, Lcom/bzbs/bean/StampSticker;->stampAgency:Lcom/bzbs/bean/StampAgency;

    iget-object v4, v1, Lcom/bzbs/bean/StampAgency;->stampImageUrl:Ljava/lang/String;

    .line 1320
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_121

    move v2, v3

    .line 1321
    :goto_5a
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_121

    .line 1322
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/StampCampaign;

    iget v1, v1, Lcom/bzbs/bean/StampCampaign;->qty:I

    iget v5, v0, Lcom/bzbs/bean/StampSticker;->index_stamp:I

    if-ne v1, v5, :cond_106

    .line 1323
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/StampCampaign;

    iget-object v4, v1, Lcom/bzbs/bean/StampCampaign;->img_url:Ljava/lang/String;

    .line 1324
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/StampCampaign;

    iput-object v1, v0, Lcom/bzbs/bean/StampSticker;->stampCampaign:Lcom/bzbs/bean/StampCampaign;

    move-object v1, v4

    .line 1329
    :goto_85
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v2, v4, :cond_10b

    .line 1330
    iget-object v2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->c()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    new-array v2, v8, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v4, Lcom/bzbs/util/transform/CircleTransform;

    iget-object v5, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;->d:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/bzbs/util/transform/CircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1335
    :goto_b3
    iget-object v1, v0, Lcom/bzbs/bean/StampSticker;->stampCampaign:Lcom/bzbs/bean/StampCampaign;

    if-eqz v1, :cond_c1

    .line 1336
    iget-object v1, p1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;->a:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$1;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;Lcom/bzbs/bean/StampSticker;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1350
    :cond_c1
    return-void

    .line 1273
    :pswitch_c2
    iget-object v1, p1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto/16 :goto_41

    .line 1276
    :pswitch_c9
    iget-object v1, p1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto/16 :goto_41

    .line 1279
    :pswitch_d0
    iget-object v1, p1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto/16 :goto_41

    .line 1282
    :pswitch_d7
    iget-object v1, p1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto/16 :goto_41

    .line 1296
    :cond_de
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1297
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1298
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 1299
    iget-object v1, p1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_51

    .line 1302
    :cond_f3
    iget-boolean v1, v0, Lcom/bzbs/bean/StampSticker;->enable:Z

    if-ne v1, v8, :cond_ff

    .line 1303
    iget-object v1, p1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;->c:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_51

    .line 1305
    :cond_ff
    iget-object v1, p1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;->c:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_51

    .line 1321
    :cond_106
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_5a

    .line 1332
    :cond_10b
    iget-object v2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_b3

    :cond_121
    move-object v1, v4

    goto/16 :goto_85

    .line 1271
    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_c2
        :pswitch_c9
        :pswitch_d0
        :pswitch_d7
    .end packed-switch
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    .prologue
    .line 1359
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1360
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 1227
    check-cast p1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;->a(Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 1227
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;

    move-result-object v0

    return-object v0
.end method
