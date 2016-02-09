.class public Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;
.super Landroid/support/v4/app/ListFragment;
.source "MenuMarketBuzzebeesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;,
        Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$SampleItem;,
        Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$ViewHolder;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field public adapter:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;

.field private gDialog:Landroid/app/ProgressDialog;

.field private gHandler:Landroid/os/Handler;

.field private gTvHeaderMenu:Landroid/widget/TextView;

.field private mLeak:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 37
    const-class v0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 330
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$1;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$1;-><init>(Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 343
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/DSNSKW_.TTF"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 102
    .local v0, "font":Landroid/graphics/Typeface;
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->gTvHeaderMenu:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 103
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->gHandler:Landroid/os/Handler;

    .line 50
    sput-object p0, Lic/buzzebeeslib/LibConst;->M_MenuMarketBuzzebeesFragment:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    sget v0, Lic/buzzebeeslib/R$layout;->bz_menu_market_buzzebees:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->mLeak:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->mLeak:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$id;->tvHeaderMenu:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->gTvHeaderMenu:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->mLeak:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 364
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 365
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 355
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroyView()V

    .line 356
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 357
    sget v0, Lic/buzzebeeslib/R$id;->layout_main:I

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/support/v4/app/Fragment;I)V

    .line 359
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->mLeak:Landroid/view/View;

    .line 360
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 62
    invoke-super/range {p0 .. p5}, Landroid/support/v4/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 63
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$SampleItem;

    .line 64
    .local v0, "container":Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$SampleItem;
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$SampleItem;->tag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_27

    .line 73
    :cond_27
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 347
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 348
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->gDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 349
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->gDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 351
    :cond_c
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 77
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 78
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->TAG:Ljava/lang/String;

    const-string v2, "onResume "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_11

    .line 95
    :goto_10
    return-void

    .line 84
    :cond_11
    sput-object p0, Lic/buzzebeeslib/LibConst;->M_MenuMarketBuzzebeesFragment:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;

    .line 86
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lic/buzzebeeslib/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 87
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->gTvHeaderMenu:Landroid/widget/TextView;

    sget v2, Lic/buzzebeeslib/R$string;->menu_slide_main_header:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    new-instance v1, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;-><init>(Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->adapter:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_35
    const/16 v1, 0x9

    if-lt v0, v1, :cond_3f

    .line 93
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->adapter:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_10

    .line 91
    :cond_3f
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->adapter:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;

    new-instance v2, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$SampleItem;

    invoke-direct {v2, p0, v0}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$SampleItem;-><init>(Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;I)V

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;->add(Ljava/lang/Object;)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_35
.end method
