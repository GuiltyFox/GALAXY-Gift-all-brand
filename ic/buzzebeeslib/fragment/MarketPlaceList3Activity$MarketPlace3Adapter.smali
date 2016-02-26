.class Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;
.super Landroid/widget/BaseAdapter;
.source "MarketPlaceList3Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarketPlace3Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    }
.end annotation


# instance fields
.field private formatter:Ljava/text/NumberFormat;

.field private formatterHasDigi:Ljava/text/NumberFormat;

.field private gInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1234
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1231
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatter:Ljava/text/NumberFormat;

    .line 1232
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    .line 1235
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->gInflater:Landroid/view/LayoutInflater;

    .line 1237
    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    .registers 2

    .prologue
    .line 1228
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 1240
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lic/buzzebeeslib/bean/Campaign;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1244
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/Campaign;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->getItem(I)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1248
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 22
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1267
    const/4 v8, 0x0

    .line 1269
    .local v8, "campaign":Lic/buzzebeeslib/bean/Campaign;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v2}, Lic/buzzebeeslib/bean/Campaign;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lic/buzzebeeslib/bean/Campaign;

    move-object v8, v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_ab

    .line 1274
    :goto_19
    const/4 v12, 0x0

    .line 1275
    .local v12, "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    move-object/from16 v13, p2

    .line 1277
    .local v13, "view":Landroid/view/View;
    if-eqz p2, :cond_24

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_b1

    .line 1278
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->gInflater:Landroid/view/LayoutInflater;

    sget v3, Lic/buzzebeeslib/R$layout;->bz_market_place_list3_row:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 1279
    new-instance v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;

    .end local v12    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;)V

    .line 1280
    .restart local v12    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    sget v2, Lic/buzzebeeslib/R$id;->imgCampaign:I

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    .line 1281
    sget v2, Lic/buzzebeeslib/R$id;->tvCaption:I

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    .line 1282
    sget v2, Lic/buzzebeeslib/R$id;->tvType:I

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    .line 1283
    sget v2, Lic/buzzebeeslib/R$id;->tvPrice:I

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPrice:Landroid/widget/TextView;

    .line 1284
    sget v2, Lic/buzzebeeslib/R$id;->tvPoint:I

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    .line 1285
    sget v2, Lic/buzzebeeslib/R$id;->tvPriceFull:I

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    .line 1286
    sget v2, Lic/buzzebeeslib/R$id;->imgRibbon:I

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    .line 1288
    sget v2, Lic/buzzebeeslib/R$id;->layoutAction:I

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutAction:Landroid/widget/RelativeLayout;

    .line 1289
    sget v2, Lic/buzzebeeslib/R$id;->tvAction:I

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvAction:Landroid/widget/TextView;

    .line 1290
    sget v2, Lic/buzzebeeslib/R$id;->tvStatus:I

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvStatus:Landroid/widget/TextView;

    .line 1291
    sget v2, Lic/buzzebeeslib/R$id;->imgCardPtt:I

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCardPtt:Landroid/widget/ImageView;

    .line 1292
    invoke-virtual {v13, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1297
    :goto_a8
    if-nez v8, :cond_b8

    .line 1496
    :goto_aa
    return-object v13

    .line 1270
    .end local v12    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    .end local v13    # "view":Landroid/view/View;
    :catch_ab
    move-exception v11

    .line 1271
    .local v11, "e1":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_19

    .line 1294
    .end local v11    # "e1":Ljava/lang/Exception;
    .restart local v12    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    .restart local v13    # "view":Landroid/view/View;
    :cond_b1
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    check-cast v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;

    .restart local v12    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    goto :goto_a8

    .line 1301
    :cond_b8
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1302
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 1303
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPrice:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 1304
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 1305
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 1306
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvAction:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, -0x3

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 1307
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvStatus:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 1309
    sget-object v2, Lic/buzzebeeslib/LibConst;->PACKAGE_PARENT:Ljava/lang/String;

    const-string v3, "com.ptt.BlueCard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_344

    .line 1310
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCardPtt:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1322
    :goto_12f
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34d

    .line 1323
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->campaign_list_type_draw:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1324
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v3, 0xdd

    const/16 v4, 0x59

    const/16 v5, 0x2b

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1352
    :goto_157
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v8, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    .line 1353
    .local v16, "point_per_unit":D
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_184

    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4db

    .line 1354
    :cond_184
    const-wide/high16 v2, 0x3ff0000000000000L

    cmpg-double v2, v16, v2

    if-gtz v2, :cond_4a9

    .line 1355
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v5, Lic/buzzebeeslib/R$string;->market_point:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1359
    :goto_1ba
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutAction:Landroid/widget/RelativeLayout;

    const/16 v3, 0xff

    const/16 v4, 0xae

    const/16 v5, 0xe

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1393
    :goto_1c9
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPrice:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v5, v8, Lic/buzzebeeslib/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    invoke-static {v5}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v5, Lic/buzzebeeslib/R$string;->mk_detail_thb:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1394
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v5, v8, Lic/buzzebeeslib/bean/Campaign;->OriginalPrice:Ljava/lang/String;

    invoke-static {v5}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v5, Lic/buzzebeeslib/R$string;->mk_detail_thb:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1395
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    iget-object v3, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1397
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_252

    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6db

    .line 1398
    :cond_252
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPrice:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1399
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1405
    :goto_25e
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6eb

    .line 1406
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvAction:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->campaign_list_button_add_to_cart:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1411
    :goto_277
    iget-object v9, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    .line 1412
    .local v9, "campaign_type_final":Ljava/lang/String;
    iget-object v10, v8, Lic/buzzebeeslib/bean/Campaign;->Website:Ljava/lang/String;

    .line 1413
    .local v10, "campaign_website_final":Ljava/lang/String;
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvAction:Landroid/widget/TextView;

    new-instance v3, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v9, v10}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1449
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1450
    iget-wide v2, v8, Lic/buzzebeeslib/bean/Campaign;->Qty:J

    long-to-double v14, v2

    .line 1451
    .local v14, "intRemain":D
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v8, Lic/buzzebeeslib/bean/Campaign;->DayRemain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_6fc

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v8, Lic/buzzebeeslib/bean/Campaign;->DayRemain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_6fc

    .line 1455
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvStatus:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->campaign_list_status_day_remain:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1479
    :goto_2d7
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    iget-object v3, v8, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1480
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1482
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1483
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$7(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    invoke-virtual {v8}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1487
    :try_start_2ff
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCatName:Ljava/lang/String;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$8(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "All"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73e

    .line 1488
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$9(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    const-string v3, "BZB Marketplace"

    const-string v4, "View BZB Campaign Banner"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v8, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v8, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_33f
    .catch Ljava/lang/Exception; {:try_start_2ff .. :try_end_33f} :catch_341

    goto/16 :goto_aa

    .line 1492
    :catch_341
    move-exception v2

    goto/16 :goto_aa

    .line 1312
    .end local v9    # "campaign_type_final":Ljava/lang/String;
    .end local v10    # "campaign_website_final":Ljava/lang/String;
    .end local v14    # "intRemain":D
    .end local v16    # "point_per_unit":D
    :cond_344
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCardPtt:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_12f

    .line 1325
    :cond_34d
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_377

    .line 1326
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->campaign_list_type_free:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1327
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v3, 0xdd

    const/16 v4, 0x59

    const/16 v5, 0x2b

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_157

    .line 1328
    :cond_377
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38b

    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3ab

    .line 1329
    :cond_38b
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->campaign_list_type_earn:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1330
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v3, 0xff

    const/16 v4, 0xae

    const/16 v5, 0xe

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_157

    .line 1331
    :cond_3ab
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3ff

    .line 1332
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->PointType:Ljava/lang/String;

    const-string v3, "get"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3df

    .line 1333
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->campaign_list_type_earn:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1334
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v3, 0xff

    const/16 v4, 0xae

    const/16 v5, 0xe

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_157

    .line 1336
    :cond_3df
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->campaign_list_type_free:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1337
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v3, 0xdd

    const/16 v4, 0x59

    const/16 v5, 0x2b

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_157

    .line 1339
    :cond_3ff
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_448

    .line 1342
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatter:Ljava/text/NumberFormat;

    iget-object v5, v8, Lic/buzzebeeslib/bean/Campaign;->Discount:Ljava/lang/String;

    invoke-static {v5}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const/4 v5, 0x5

    invoke-static {v6, v7, v5}, Lic/buzzebeeslib/util/BBUtil;->roundMyData(DI)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "% OFF"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1343
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v3, 0x80

    const/4 v4, 0x3

    const/16 v5, 0xd

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_157

    .line 1344
    :cond_448
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_491

    .line 1345
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatter:Ljava/text/NumberFormat;

    iget-object v5, v8, Lic/buzzebeeslib/bean/Campaign;->Discount:Ljava/lang/String;

    invoke-static {v5}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const/4 v5, 0x5

    invoke-static {v6, v7, v5}, Lic/buzzebeeslib/util/BBUtil;->roundMyData(DI)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "% OFF"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1346
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v3, 0x80

    const/4 v4, 0x3

    const/16 v5, 0xd

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_157

    .line 1348
    :cond_491
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1349
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v3, 0xdd

    const/16 v4, 0x59

    const/16 v5, 0x2b

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_157

    .line 1357
    .restart local v16    # "point_per_unit":D
    :cond_4a9
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v5, Lic/buzzebeeslib/R$string;->market_points:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1ba

    .line 1360
    :cond_4db
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_621

    .line 1361
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->PointType:Ljava/lang/String;

    const-string v3, "get"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_567

    .line 1362
    const-wide/high16 v2, 0x3ff0000000000000L

    cmpg-double v2, v16, v2

    if-gtz v2, :cond_536

    .line 1363
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v5, Lic/buzzebeeslib/R$string;->market_point:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1367
    :goto_525
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutAction:Landroid/widget/RelativeLayout;

    const/16 v3, 0xff

    const/16 v4, 0xae

    const/16 v5, 0xe

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_1c9

    .line 1365
    :cond_536
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v5, Lic/buzzebeeslib/R$string;->market_points:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_525

    .line 1369
    :cond_567
    const-wide/high16 v2, 0x3ff0000000000000L

    cmpg-double v2, v16, v2

    if-gtz v2, :cond_5cb

    .line 1370
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v5, Lic/buzzebeeslib/R$string;->market_use:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v5, Lic/buzzebeeslib/R$string;->market_point:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    :goto_5b1
    sget-object v2, Lic/buzzebeeslib/LibConst;->PACKAGE_PARENT:Ljava/lang/String;

    const-string v3, "com.samsung.privilege"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_610

    .line 1375
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutAction:Landroid/widget/RelativeLayout;

    const/4 v3, 0x2

    const/16 v4, 0x92

    const/16 v5, 0xca

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_1c9

    .line 1372
    :cond_5cb
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v5, Lic/buzzebeeslib/R$string;->market_use:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v5, Lic/buzzebeeslib/R$string;->market_points:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5b1

    .line 1377
    :cond_610
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutAction:Landroid/widget/RelativeLayout;

    const/16 v3, 0xdd

    const/16 v4, 0x59

    const/16 v5, 0x2b

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_1c9

    .line 1381
    :cond_621
    const-wide/high16 v2, 0x3ff0000000000000L

    cmpg-double v2, v16, v2

    if-gtz v2, :cond_685

    .line 1382
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v5, Lic/buzzebeeslib/R$string;->market_use:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v5, Lic/buzzebeeslib/R$string;->market_point:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1386
    :goto_66b
    sget-object v2, Lic/buzzebeeslib/LibConst;->PACKAGE_PARENT:Ljava/lang/String;

    const-string v3, "com.samsung.privilege"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6ca

    .line 1387
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutAction:Landroid/widget/RelativeLayout;

    const/4 v3, 0x2

    const/16 v4, 0x92

    const/16 v5, 0xca

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_1c9

    .line 1384
    :cond_685
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v5, Lic/buzzebeeslib/R$string;->market_use:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v5, Lic/buzzebeeslib/R$string;->market_points:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_66b

    .line 1389
    :cond_6ca
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutAction:Landroid/widget/RelativeLayout;

    const/16 v3, 0xdd

    const/16 v4, 0x59

    const/16 v5, 0x2b

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_1c9

    .line 1401
    :cond_6db
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPrice:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1402
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_25e

    .line 1408
    :cond_6eb
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvAction:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->campaign_list_button_see_more:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_277

    .line 1456
    .restart local v9    # "campaign_type_final":Ljava/lang/String;
    .restart local v10    # "campaign_website_final":Ljava/lang/String;
    .restart local v14    # "intRemain":D
    :cond_6fc
    const-wide/16 v2, 0x0

    cmpl-double v2, v14, v2

    if-lez v2, :cond_719

    const-wide/high16 v2, 0x4024000000000000L

    cmpg-double v2, v14, v2

    if-gez v2, :cond_719

    .line 1460
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvStatus:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->campaign_list_status_running_out:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2d7

    .line 1461
    :cond_719
    iget v2, v8, Lic/buzzebeeslib/bean/Campaign;->DayProceed:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_735

    const-wide/16 v2, 0x0

    cmpl-double v2, v14, v2

    if-lez v2, :cond_735

    .line 1465
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvStatus:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->campaign_list_status_new:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2d7

    .line 1468
    :cond_735
    iget-object v2, v12, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvStatus:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2d7

    .line 1490
    :cond_73e
    :try_start_73e
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$9(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BZB Category-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCatName:Ljava/lang/String;
    invoke-static {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$8(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "View BZB Campaign Banner"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v8, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v8, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_783
    .catch Ljava/lang/Exception; {:try_start_73e .. :try_end_783} :catch_341

    goto/16 :goto_aa
.end method
