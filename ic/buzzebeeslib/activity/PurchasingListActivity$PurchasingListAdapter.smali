.class Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PurchasingListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurchasingListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/Purchasing;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/Purchasing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1842
    .local p2, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/Purchasing;>;"
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1843
    iput-object p2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->data:Ljava/util/ArrayList;

    .line 1844
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 1847
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1851
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1855
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 20
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1878
    const/4 v12, 0x0

    .line 1880
    .local v12, "purchasing":Lic/buzzebeeslib/bean/Purchasing;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->data:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/Purchasing;

    invoke-virtual {v1}, Lic/buzzebeeslib/bean/Purchasing;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lic/buzzebeeslib/bean/Purchasing;

    move-object v12, v0
    :try_end_15
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_15} :catch_163

    .line 1886
    :goto_15
    const/4 v10, 0x0

    .line 1887
    .local v10, "holder":Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;
    move-object/from16 v13, p2

    .line 1889
    .local v13, "view":Landroid/view/View;
    if-eqz p2, :cond_20

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_169

    .line 1890
    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    .line 1892
    .local v11, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lic/buzzebeeslib/R$layout;->bz_purchasing_row:I

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 1893
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1894
    invoke-virtual {v13}, Landroid/view/View;->clearFocus()V

    .line 1895
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1896
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1897
    invoke-virtual {v13}, Landroid/view/View;->cancelLongPress()V

    .line 1899
    new-instance v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;

    .end local v10    # "holder":Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;
    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;)V

    .line 1901
    .restart local v10    # "holder":Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;
    sget v1, Lic/buzzebeeslib/R$id;->LayoutExpirationDate:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutExpirationDate:Landroid/widget/RelativeLayout;

    .line 1902
    sget v1, Lic/buzzebeeslib/R$id;->tvExpirationDate:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvExpirationDate:Landroid/widget/TextView;

    .line 1903
    sget v1, Lic/buzzebeeslib/R$id;->tvLabelExpiration:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvLabelExpiration:Landroid/widget/TextView;

    .line 1904
    sget v1, Lic/buzzebeeslib/R$id;->tvLabelDate:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvLabelDate:Landroid/widget/TextView;

    .line 1906
    sget v1, Lic/buzzebeeslib/R$id;->layoutMain:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->layoutMain:Landroid/widget/LinearLayout;

    .line 1907
    sget v1, Lic/buzzebeeslib/R$id;->imgAward:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->imgAward:Landroid/widget/ImageView;

    .line 1908
    sget v1, Lic/buzzebeeslib/R$id;->tvAwardName:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvAwardName:Landroid/widget/TextView;

    .line 1910
    sget v1, Lic/buzzebeeslib/R$id;->tvDec:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    .line 1911
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1913
    sget v1, Lic/buzzebeeslib/R$id;->LayoutCommand:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutCommand:Landroid/widget/RelativeLayout;

    .line 1914
    sget v1, Lic/buzzebeeslib/R$id;->imgCommand:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->imgCommand:Landroid/widget/ImageView;

    .line 1915
    sget v1, Lic/buzzebeeslib/R$id;->tvCommand:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvCommand:Landroid/widget/TextView;

    .line 1917
    invoke-virtual {v13, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1924
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    :goto_c1
    :try_start_c1
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "fonts/kit55p.ttf"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 1926
    .local v9, "font":Landroid/graphics/Typeface;
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvExpirationDate:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1927
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvLabelExpiration:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1928
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvLabelDate:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1929
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvAwardName:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1931
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1932
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvCommand:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_ed} :catch_401

    .line 1938
    .end local v9    # "font":Landroid/graphics/Typeface;
    :goto_ed
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "api/campaign/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v12, Lic/buzzebeeslib/bean/Purchasing;->ID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/picture"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1939
    .local v2, "img_url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$27(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v1

    iget-object v3, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->imgAward:Landroid/widget/ImageView;

    const/4 v4, 0x0

    sget v5, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1940
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvAwardName:Landroid/widget/TextView;

    iget-object v3, v12, Lic/buzzebeeslib/bean/Purchasing;->Name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1943
    iget-wide v3, v12, Lic/buzzebeeslib/bean/Purchasing;->Type:J

    const-wide/16 v5, 0x3

    cmp-long v1, v3, v5

    if-nez v1, :cond_23f

    .line 1944
    iget-boolean v1, v12, Lic/buzzebeeslib/bean/Purchasing;->Delivered:Z

    if-eqz v1, :cond_187

    .line 1945
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutExpirationDate:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1946
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1947
    iget-boolean v1, v12, Lic/buzzebeeslib/bean/Purchasing;->IsShipped:Z

    if-eqz v1, :cond_171

    .line 1948
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutCommand:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1949
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    sget v4, Lic/buzzebeeslib/R$string;->purchasing_buy_dec_3:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2069
    :cond_158
    :goto_158
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->layoutMain:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2070
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutCommand:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v12}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 2071
    return-object v13

    .line 1881
    .end local v2    # "img_url":Ljava/lang/String;
    .end local v10    # "holder":Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;
    .end local v13    # "view":Landroid/view/View;
    :catch_163
    move-exception v8

    .line 1883
    .local v8, "e1":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v8}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto/16 :goto_15

    .line 1919
    .end local v8    # "e1":Ljava/lang/CloneNotSupportedException;
    .restart local v10    # "holder":Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;
    .restart local v13    # "view":Landroid/view/View;
    :cond_169
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "holder":Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;
    check-cast v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;

    .restart local v10    # "holder":Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;
    goto/16 :goto_c1

    .line 1951
    .restart local v2    # "img_url":Ljava/lang/String;
    :cond_171
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutCommand:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1952
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    sget v4, Lic/buzzebeeslib/R$string;->purchasing_buy_dec:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_158

    .line 1956
    :cond_187
    iget-boolean v1, v12, Lic/buzzebeeslib/bean/Purchasing;->IsSpecificPrintVoucher:Z

    if-eqz v1, :cond_1ae

    .line 1957
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutExpirationDate:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1958
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutCommand:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1959
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1960
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    sget v4, Lic/buzzebeeslib/R$string;->purchasing_buy_dec_5:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_158

    .line 1964
    :cond_1ae
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    sget v4, Lic/buzzebeeslib/R$string;->purchasing_use_this_shope:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1965
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvCommand:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    sget v4, Lic/buzzebeeslib/R$string;->purchasing_deal_free_command_2:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1967
    iget-wide v3, v12, Lic/buzzebeeslib/bean/Purchasing;->ExpireIn:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_1f8

    .line 1968
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutExpirationDate:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1969
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutCommand:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1970
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    sget v4, Lic/buzzebeeslib/R$string;->purchasing_this_serial_is_expired:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1971
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_158

    .line 1973
    :cond_1f8
    iget-boolean v1, v12, Lic/buzzebeeslib/bean/Purchasing;->IsUsed:Z

    if-nez v1, :cond_22a

    .line 1974
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "dd-MM-yy"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    iget-wide v4, v12, Lic/buzzebeeslib/bean/Purchasing;->VoucherExpireDate:J

    const-wide/16 v14, 0x3e8

    mul-long/2addr v4, v14

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 1975
    .local v7, "dateHuman":Ljava/lang/String;
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutExpirationDate:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1976
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutCommand:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1977
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvExpirationDate:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1978
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_158

    .line 1980
    .end local v7    # "dateHuman":Ljava/lang/String;
    :cond_22a
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutExpirationDate:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1981
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1982
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutCommand:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_158

    .line 1988
    :cond_23f
    iget-wide v3, v12, Lic/buzzebeeslib/bean/Purchasing;->Type:J

    const-wide/16 v5, 0x2

    cmp-long v1, v3, v5

    if-eqz v1, :cond_24f

    iget-wide v3, v12, Lic/buzzebeeslib/bean/Purchasing;->Type:J

    const-wide/16 v5, 0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_388

    .line 1990
    :cond_24f
    iget-boolean v1, v12, Lic/buzzebeeslib/bean/Purchasing;->IsShipped:Z

    if-eqz v1, :cond_277

    .line 1991
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutExpirationDate:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1992
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutCommand:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1993
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1994
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    sget v4, Lic/buzzebeeslib/R$string;->purchasing_buy_dec_3:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_158

    .line 1997
    :cond_277
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    sget v4, Lic/buzzebeeslib/R$string;->purchasing_use_this_shope:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1998
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvCommand:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    sget v4, Lic/buzzebeeslib/R$string;->purchasing_deal_free_command_2:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2000
    iget-boolean v1, v12, Lic/buzzebeeslib/bean/Purchasing;->Delivered:Z

    if-eqz v1, :cond_2ed

    .line 2001
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutExpirationDate:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2002
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsHasAddress:Z
    invoke-static {v1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$30(Lic/buzzebeeslib/activity/PurchasingListActivity;)Z

    move-result v1

    if-eqz v1, :cond_2c7

    .line 2003
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutCommand:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2004
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2005
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    sget v4, Lic/buzzebeeslib/R$string;->purchasing_buy_dec:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_158

    .line 2007
    :cond_2c7
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutCommand:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2008
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvCommand:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    sget v4, Lic/buzzebeeslib/R$string;->purchasing_deal_free_command_1:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2009
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    sget v4, Lic/buzzebeeslib/R$string;->purchasing_send_by_bzbs:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_158

    .line 2012
    :cond_2ed
    iget-boolean v1, v12, Lic/buzzebeeslib/bean/Purchasing;->IsSpecificPrintVoucher:Z

    if-eqz v1, :cond_315

    .line 2013
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutExpirationDate:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2014
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutCommand:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2015
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2016
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    sget v4, Lic/buzzebeeslib/R$string;->purchasing_buy_dec_5:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_158

    .line 2018
    :cond_315
    iget-wide v3, v12, Lic/buzzebeeslib/bean/Purchasing;->ExpireIn:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_341

    .line 2019
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutExpirationDate:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2020
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutCommand:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2021
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    sget v4, Lic/buzzebeeslib/R$string;->purchasing_this_serial_is_expired:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2022
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_158

    .line 2024
    :cond_341
    iget-boolean v1, v12, Lic/buzzebeeslib/bean/Purchasing;->IsUsed:Z

    if-nez v1, :cond_373

    .line 2025
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "dd-MM-yy"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    iget-wide v4, v12, Lic/buzzebeeslib/bean/Purchasing;->VoucherExpireDate:J

    const-wide/16 v14, 0x3e8

    mul-long/2addr v4, v14

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 2026
    .restart local v7    # "dateHuman":Ljava/lang/String;
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutExpirationDate:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2027
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutCommand:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2028
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvExpirationDate:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2029
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_158

    .line 2031
    .end local v7    # "dateHuman":Ljava/lang/String;
    :cond_373
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutExpirationDate:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2032
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2033
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutCommand:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_158

    .line 2040
    :cond_388
    iget-wide v3, v12, Lic/buzzebeeslib/bean/Purchasing;->Type:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_158

    .line 2042
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutExpirationDate:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2043
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2044
    iget-boolean v1, v12, Lic/buzzebeeslib/bean/Purchasing;->HasWinner:Z

    if-eqz v1, :cond_3e3

    .line 2045
    iget-boolean v1, v12, Lic/buzzebeeslib/bean/Purchasing;->IsWinner:Z

    if-eqz v1, :cond_3cb

    .line 2046
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutCommand:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2047
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    sget v4, Lic/buzzebeeslib/R$string;->purchasing_draw_message_3:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2048
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvCommand:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    sget v4, Lic/buzzebeeslib/R$string;->purchasing_deal_free_command_4:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_158

    .line 2051
    :cond_3cb
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutCommand:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2052
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    sget v4, Lic/buzzebeeslib/R$string;->purchasing_draw_message_2:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_158

    .line 2055
    :cond_3e3
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->LayoutCommand:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2056
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2057
    iget-object v1, v10, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->tvDec:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    sget v4, Lic/buzzebeeslib/R$string;->purchasing_draw_message_1:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_158

    .line 1933
    .end local v2    # "img_url":Ljava/lang/String;
    :catch_401
    move-exception v1

    goto/16 :goto_ed
.end method
