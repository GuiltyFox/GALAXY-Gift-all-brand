.class public Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuSlideAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CampaignCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/CampaignCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuSlideAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/CampaignCategoryFragment;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/fragment/CampaignCategoryFragment;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 310
    iput-object p1, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuSlideAdapter;->this$0:Lic/buzzebeeslib/fragment/CampaignCategoryFragment;

    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 312
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 315
    const/4 v8, 0x0

    .line 316
    .local v8, "holder":Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;
    move-object v9, p2

    .line 318
    .local v9, "view":Landroid/view/View;
    if-eqz p2, :cond_e

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b8

    .line 319
    :cond_e
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuSlideAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lic/buzzebeeslib/R$layout;->bz_campaign_category_list_row:I

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 320
    new-instance v8, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;

    .end local v8    # "holder":Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;
    iget-object v0, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuSlideAdapter;->this$0:Lic/buzzebeeslib/fragment/CampaignCategoryFragment;

    invoke-direct {v8, v0, v3}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;-><init>(Lic/buzzebeeslib/fragment/CampaignCategoryFragment;Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;)V

    .line 321
    .restart local v8    # "holder":Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;
    sget v0, Lic/buzzebeeslib/R$id;->LayoutMenu:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v8, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;->LayoutMenu:Landroid/widget/RelativeLayout;

    .line 322
    sget v0, Lic/buzzebeeslib/R$id;->LayoutMenuMyPoint:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v8, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;->LayoutMenuMyPoint:Landroid/widget/RelativeLayout;

    .line 323
    sget v0, Lic/buzzebeeslib/R$id;->imgIcon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v8, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;->imgIcon:Landroid/widget/ImageView;

    .line 324
    sget v0, Lic/buzzebeeslib/R$id;->tvMenuName:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;->tvMenuName:Landroid/widget/TextView;

    .line 325
    sget v0, Lic/buzzebeeslib/R$id;->tvMyPointCaption:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;->tvMyPointCaption:Landroid/widget/TextView;

    .line 326
    sget v0, Lic/buzzebeeslib/R$id;->tvMyPointNumber:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;->tvMyPointNumber:Landroid/widget/TextView;

    .line 327
    invoke-virtual {p2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 332
    :goto_62
    iget-object v0, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuSlideAdapter;->this$0:Lic/buzzebeeslib/fragment/CampaignCategoryFragment;

    invoke-virtual {v0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "fonts/kit55p.ttf"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 333
    .local v6, "font":Landroid/graphics/Typeface;
    iget-object v0, v8, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;->tvMenuName:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 334
    iget-object v0, v8, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;->tvMyPointCaption:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 335
    iget-object v0, v8, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;->tvMyPointNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 337
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuSlideAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuItem;

    iget-object v0, v0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuItem;->campaignCategory:Lic/buzzebeeslib/bean/CampaignCategoryDynamic;

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;->name:Ljava/lang/String;

    const-string v2, "MyPoints"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 338
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v0, "###,###,###"

    invoke-direct {v7, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 339
    .local v7, "formatter":Ljava/text/NumberFormat;
    iget-object v0, v8, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;->tvMyPointNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuSlideAdapter;->this$0:Lic/buzzebeeslib/fragment/CampaignCategoryFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetPoints(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v0, v8, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;->LayoutMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 342
    iget-object v0, v8, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;->LayoutMenuMyPoint:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 358
    .end local v7    # "formatter":Ljava/text/NumberFormat;
    :goto_b7
    return-object p2

    .line 329
    .end local v6    # "font":Landroid/graphics/Typeface;
    :cond_b8
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "holder":Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;
    check-cast v8, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;

    .restart local v8    # "holder":Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;
    goto :goto_62

    .line 343
    .restart local v6    # "font":Landroid/graphics/Typeface;
    :cond_bf
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuSlideAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuItem;

    iget-object v0, v0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuItem;->campaignCategory:Lic/buzzebeeslib/bean/CampaignCategoryDynamic;

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;->name:Ljava/lang/String;

    const-string v2, "ViewAll"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 344
    iget-object v0, v8, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;->imgIcon:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_menu_icon_viewall:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 346
    iget-object v0, v8, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;->tvMenuName:Landroid/widget/TextView;

    const-string v2, "VIEW ALL"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, v8, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;->LayoutMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 348
    iget-object v0, v8, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;->LayoutMenuMyPoint:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_b7

    .line 350
    :cond_ea
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaigncat/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuSlideAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuItem;

    iget-object v0, v0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuItem;->campaignCategory:Lic/buzzebeeslib/bean/CampaignCategoryDynamic;

    iget v0, v0, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;->cat:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/picture"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "cat_img_url":Ljava/lang/String;
    iget-object v0, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuSlideAdapter;->this$0:Lic/buzzebeeslib/fragment/CampaignCategoryFragment;

    # getter for: Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->access$2(Lic/buzzebeeslib/fragment/CampaignCategoryFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    iget-object v2, v8, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;->imgIcon:Landroid/widget/ImageView;

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 353
    iget-object v2, v8, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;->tvMenuName:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuSlideAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuItem;

    iget-object v0, v0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuItem;->campaignCategory:Lic/buzzebeeslib/bean/CampaignCategoryDynamic;

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, v8, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;->LayoutMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 355
    iget-object v0, v8, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;->LayoutMenuMyPoint:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_b7
.end method
