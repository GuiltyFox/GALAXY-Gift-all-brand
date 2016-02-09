.class public Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MenuMarketBuzzebeesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuSlideAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$SampleItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;->this$0:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 134
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;)Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;->this$0:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 138
    const/4 v3, 0x0

    .line 139
    .local v3, "holder":Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;
    move-object v5, p2

    .line 141
    .local v5, "view":Landroid/view/View;
    if-eqz p2, :cond_e

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_e2

    .line 142
    :cond_e
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lic/buzzebeeslib/R$layout;->bz_menu_slide_row:I

    invoke-virtual {v6, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 143
    new-instance v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;

    .end local v3    # "holder":Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;
    iget-object v6, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;->this$0:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;

    invoke-direct {v3, v6, v10}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;-><init>(Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;)V

    .line 144
    .restart local v3    # "holder":Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;
    sget v6, Lic/buzzebeeslib/R$id;->LayoutMenu:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutMenu:Landroid/widget/RelativeLayout;

    .line 145
    sget v6, Lic/buzzebeeslib/R$id;->LayoutHeaderMenu:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutHeaderMenu:Landroid/widget/RelativeLayout;

    .line 146
    sget v6, Lic/buzzebeeslib/R$id;->LayoutPowerBy:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutPowerBy:Landroid/widget/RelativeLayout;

    .line 147
    sget v6, Lic/buzzebeeslib/R$id;->imgIcon:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->imgIcon:Landroid/widget/ImageView;

    .line 148
    sget v6, Lic/buzzebeeslib/R$id;->tvMenuName:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->tvMenuName:Landroid/widget/TextView;

    .line 149
    sget v6, Lic/buzzebeeslib/R$id;->tvHeaderMenuName:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->tvHeaderMenuName:Landroid/widget/TextView;

    .line 150
    sget v6, Lic/buzzebeeslib/R$id;->LayoutSearch:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutSearch:Landroid/widget/FrameLayout;

    .line 151
    sget v6, Lic/buzzebeeslib/R$id;->etSearch:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->etSearch:Landroid/widget/EditText;

    .line 152
    sget v6, Lic/buzzebeeslib/R$id;->tvVersion:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->tvVersion:Landroid/widget/TextView;

    .line 154
    sget v6, Lic/buzzebeeslib/R$id;->LayoutMenuMyPoint:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutMenuMyPoint:Landroid/widget/RelativeLayout;

    .line 155
    sget v6, Lic/buzzebeeslib/R$id;->imgIconMyPoint:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->imgIconMyPoint:Landroid/widget/ImageView;

    .line 156
    sget v6, Lic/buzzebeeslib/R$id;->tvMyPointCaption:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->tvMyPointCaption:Landroid/widget/TextView;

    .line 157
    sget v6, Lic/buzzebeeslib/R$id;->tvMyPointNumber:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->tvMyPointNumber:Landroid/widget/TextView;

    .line 158
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 163
    :goto_a8
    iget-object v6, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;->this$0:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;

    invoke-virtual {v6}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fonts/kit55p.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 164
    .local v1, "font":Landroid/graphics/Typeface;
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->tvMenuName:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 165
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->tvHeaderMenuName:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 166
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 167
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->tvVersion:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 169
    iget-object v0, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->etSearch:Landroid/widget/EditText;

    .line 170
    .local v0, "etSearch_final":Landroid/widget/EditText;
    new-instance v6, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter$1;

    invoke-direct {v6, p0, v0}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter$1;-><init>(Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;Landroid/widget/EditText;)V

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 195
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$SampleItem;

    iget v6, v6, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$SampleItem;->tag:I

    packed-switch v6, :pswitch_data_266

    .line 325
    :goto_e1
    return-object p2

    .line 160
    .end local v0    # "etSearch_final":Landroid/widget/EditText;
    .end local v1    # "font":Landroid/graphics/Typeface;
    :cond_e2
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "holder":Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;
    check-cast v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;

    .restart local v3    # "holder":Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;
    goto :goto_a8

    .line 197
    .restart local v0    # "etSearch_final":Landroid/widget/EditText;
    .restart local v1    # "font":Landroid/graphics/Typeface;
    :pswitch_e9
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutHeaderMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 198
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 199
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutSearch:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 200
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutPowerBy:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 201
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutMenuMyPoint:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 203
    iget-object v6, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;->this$0:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;

    invoke-virtual {v6}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    if-eqz v6, :cond_11b

    .line 204
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->imgIconMyPoint:Landroid/widget/ImageView;

    sget v7, Lic/buzzebeeslib/R$drawable;->bz_menu_icon_points:I

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;->this$0:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;

    invoke-virtual {v8}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 207
    :cond_11b
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->tvMyPointCaption:Landroid/widget/TextView;

    sget v7, Lic/buzzebeeslib/R$string;->menu_slide_main_item_1:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 208
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v6, "###,###,###"

    invoke-direct {v2, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 209
    .local v2, "formatter":Ljava/text/NumberFormat;
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->tvMyPointNumber:Landroid/widget/TextView;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;->this$0:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;

    invoke-virtual {v7}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetPoints(Landroid/content/Context;)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e1

    .line 212
    .end local v2    # "formatter":Ljava/text/NumberFormat;
    :pswitch_13d
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutHeaderMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 213
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 214
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutSearch:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 215
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutPowerBy:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 216
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutMenuMyPoint:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 222
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->tvMenuName:Landroid/widget/TextView;

    sget v7, Lic/buzzebeeslib/R$string;->menu_slide_main_item_2:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_e1

    .line 225
    :pswitch_15e
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutHeaderMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 226
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 227
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutSearch:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 228
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutPowerBy:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 229
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutMenuMyPoint:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 235
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->tvMenuName:Landroid/widget/TextView;

    sget v7, Lic/buzzebeeslib/R$string;->menu_slide_main_item_3:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_e1

    .line 238
    :pswitch_180
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutHeaderMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 239
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 240
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutSearch:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 241
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutPowerBy:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 242
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutMenuMyPoint:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 248
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->tvMenuName:Landroid/widget/TextView;

    sget v7, Lic/buzzebeeslib/R$string;->menu_slide_main_item_4:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_e1

    .line 251
    :pswitch_1a2
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutHeaderMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 252
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 253
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutSearch:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 254
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutPowerBy:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 255
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutMenuMyPoint:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 261
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->tvMenuName:Landroid/widget/TextView;

    sget v7, Lic/buzzebeeslib/R$string;->menu_slide_main_item_5:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_e1

    .line 264
    :pswitch_1c4
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutHeaderMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 265
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 266
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutSearch:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 267
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutPowerBy:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 268
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutMenuMyPoint:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 274
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->tvMenuName:Landroid/widget/TextView;

    sget v7, Lic/buzzebeeslib/R$string;->menu_slide_main_item_6:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_e1

    .line 277
    :pswitch_1e6
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutHeaderMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 278
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 279
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutSearch:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 280
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutPowerBy:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 281
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutMenuMyPoint:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 287
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->tvMenuName:Landroid/widget/TextView;

    sget v7, Lic/buzzebeeslib/R$string;->menu_slide_main_item_7:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_e1

    .line 290
    :pswitch_208
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutHeaderMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 291
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 292
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutSearch:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 293
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutPowerBy:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 294
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutMenuMyPoint:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 296
    iget-object v6, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;->this$0:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;

    invoke-virtual {v6}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    goto/16 :goto_e1

    .line 307
    :pswitch_228
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutHeaderMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 308
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 309
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutSearch:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 310
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutPowerBy:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 311
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->LayoutMenuMyPoint:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 314
    :try_start_241
    iget-object v6, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;->this$0:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;

    invoke-virtual {v6}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;->this$0:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;

    invoke-virtual {v7}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v4, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 315
    .local v4, "versionName":Ljava/lang/String;
    iget-object v6, v3, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;->tvVersion:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_261
    .catch Ljava/lang/Exception; {:try_start_241 .. :try_end_261} :catch_263

    goto/16 :goto_e1

    .line 316
    .end local v4    # "versionName":Ljava/lang/String;
    :catch_263
    move-exception v6

    goto/16 :goto_e1

    .line 195
    :pswitch_data_266
    .packed-switch 0x0
        :pswitch_e9
        :pswitch_13d
        :pswitch_15e
        :pswitch_180
        :pswitch_1a2
        :pswitch_1c4
        :pswitch_1e6
        :pswitch_208
        :pswitch_228
    .end packed-switch
.end method
