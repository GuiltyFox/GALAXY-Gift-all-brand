.class Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;
.super Landroid/widget/BaseAdapter;
.source "InAppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/InAppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InAppsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter$ViewHolderInAppRow;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/InAppItem;",
            ">;"
        }
    .end annotation
.end field

.field private font:Landroid/graphics/Typeface;

.field private gInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/samsung/privilege/activity/InAppsFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/InAppsFragment;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/InAppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p3, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InAppItem;>;"
    iput-object p1, p0, Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 332
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;->gInflater:Landroid/view/LayoutInflater;

    .line 333
    iput-object p3, p0, Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;->data:Ljava/util/ArrayList;

    .line 334
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;->font:Landroid/graphics/Typeface;

    .line 335
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 342
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 346
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 355
    iget-object v0, p0, Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/privilege/bean/InAppItem;

    .line 357
    .local v9, "inAppItem":Lcom/samsung/privilege/bean/InAppItem;
    const/4 v8, 0x0

    .line 358
    .local v8, "holder":Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter$ViewHolderInAppRow;
    move-object v10, p2

    .line 360
    .local v10, "view":Landroid/view/View;
    if-eqz p2, :cond_13

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_66

    .line 361
    :cond_13
    iget-object v0, p0, Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;->gInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300f5

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 362
    new-instance v8, Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter$ViewHolderInAppRow;

    .end local v8    # "holder":Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter$ViewHolderInAppRow;
    invoke-direct {v8, p0}, Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter$ViewHolderInAppRow;-><init>(Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;)V

    .line 363
    .restart local v8    # "holder":Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter$ViewHolderInAppRow;
    const v0, 0x7f0c034b

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/image/SmartImageView;

    iput-object v0, v8, Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter$ViewHolderInAppRow;->imageInApp:Lcom/loopj/android/image/SmartImageView;

    .line 364
    const v0, 0x7f0c034c

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter$ViewHolderInAppRow;->tvInApp:Landroid/widget/TextView;

    .line 367
    :try_start_37
    iget-object v0, v8, Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter$ViewHolderInAppRow;->tvInApp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 368
    iget-object v0, v8, Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter$ViewHolderInAppRow;->tvInApp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/InAppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4d} :catch_6d

    .line 373
    :goto_4d
    invoke-virtual {v10, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 378
    :goto_50
    iget-object v0, v8, Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter$ViewHolderInAppRow;->tvInApp:Landroid/widget/TextView;

    iget-object v1, v9, Lcom/samsung/privilege/bean/InAppItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v0, v8, Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter$ViewHolderInAppRow;->imageInApp:Lcom/loopj/android/image/SmartImageView;

    iget-object v1, v9, Lcom/samsung/privilege/bean/InAppItem;->image_url:Ljava/lang/String;

    const/4 v4, 0x1

    const v5, 0x7f020312

    move v3, v2

    move v6, v2

    move v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/loopj/android/image/SmartImageView;->setImageUrl(Ljava/lang/String;ZIZIII)V

    .line 382
    return-object v10

    .line 375
    :cond_66
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "holder":Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter$ViewHolderInAppRow;
    check-cast v8, Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter$ViewHolderInAppRow;

    .restart local v8    # "holder":Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter$ViewHolderInAppRow;
    goto :goto_50

    .line 369
    :catch_6d
    move-exception v0

    goto :goto_4d
.end method
