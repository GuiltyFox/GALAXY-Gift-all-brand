.class public Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;
.super Landroid/support/v4/app/Fragment;
.source "StampDetailGiftActivity.java"


# instance fields
.field public a:I

.field public b:Lcom/bzbs/bean/StampAgency;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/StampCampaign;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 935
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static a(ILcom/bzbs/bean/StampAgency;Ljava/util/ArrayList;)Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/bzbs/bean/StampAgency;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/StampCampaign;",
            ">;)",
            "Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;"
        }
    .end annotation

    .prologue
    .line 941
    new-instance v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;

    invoke-direct {v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;-><init>()V

    .line 944
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 945
    const-string/jumbo v2, "index_position"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 946
    const-string/jumbo v2, "stamp_agency"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 947
    const-string/jumbo v2, "arrayStampCampaigns"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 948
    const-string/jumbo v2, "time"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 949
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 951
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 956
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 957
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "index_position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_14
    iput v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->a:I

    .line 958
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "stamp_agency"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/StampAgency;

    :goto_29
    iput-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->b:Lcom/bzbs/bean/StampAgency;

    .line 959
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "arrayStampCampaigns"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :goto_3e
    iput-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->c:Ljava/util/ArrayList;

    .line 960
    return-void

    .line 957
    :cond_41
    const/4 v0, 0x0

    goto :goto_14

    .line 958
    :cond_43
    const/4 v0, 0x0

    goto :goto_29

    .line 959
    :cond_45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3e
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16

    .prologue
    const v11, 0x7f100209

    const/4 v10, 0x5

    const/4 v4, 0x0

    const/16 v9, 0xf

    const/16 v2, 0xa

    .line 964
    const v0, 0x7f040053

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 966
    const v0, 0x7f100206

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 967
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->b:Lcom/bzbs/bean/StampAgency;

    iget-object v3, v3, Lcom/bzbs/bean/StampAgency;->backgroundUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 969
    const v0, 0x7f100208

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 970
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v5, 0x4

    invoke-direct {v1, v3, v5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 971
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 973
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->b:Lcom/bzbs/bean/StampAgency;

    iget v1, v1, Lcom/bzbs/bean/StampAgency;->maxQuantity:I

    div-int/lit8 v3, v1, 0xa

    .line 974
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->b:Lcom/bzbs/bean/StampAgency;

    iget v1, v1, Lcom/bzbs/bean/StampAgency;->maxQuantity:I

    rem-int/lit8 v1, v1, 0xa

    .line 975
    if-lez v1, :cond_1b6

    add-int/lit8 v3, v3, 0x1

    move v5, v3

    .line 978
    :goto_59
    if-lez v1, :cond_1b3

    .line 979
    iget v3, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->a:I

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_1b3

    .line 984
    :goto_61
    iget-object v3, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->b:Lcom/bzbs/bean/StampAgency;

    iget v3, v3, Lcom/bzbs/bean/StampAgency;->currentQuantity:I

    iget v7, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->a:I

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v7, v7, 0xa

    add-int/lit8 v7, v7, -0xa

    sub-int/2addr v3, v7

    .line 985
    if-gez v3, :cond_71

    move v3, v4

    .line 988
    :cond_71
    iget v7, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->a:I

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v5, :cond_1b0

    .line 989
    const/4 v5, 0x1

    .line 999
    :goto_78
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1000
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1001
    iget v8, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v8, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->b:I

    .line 1002
    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v7, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->a:I

    .line 1004
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0xf

    .line 1005
    packed-switch v7, :pswitch_data_1ba

    .line 1023
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 1024
    const/16 v2, 0x14

    sput v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c:I

    .line 1027
    :goto_ae
    sget v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->a:I

    mul-int/lit16 v2, v2, 0x1c2

    div-int/lit16 v2, v2, 0x258

    .line 1028
    sget v7, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c:I

    sub-int v7, v2, v7

    div-int/lit8 v7, v7, 0x3

    sput v7, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->d:I

    .line 1029
    invoke-static {}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->f()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "gScreenWidth=>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->a:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    invoke-static {}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->f()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "stamp_back_height=>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    sget v8, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->a:I

    invoke-direct {v7, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1034
    const v2, 0x7f100207

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1037
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    sget v7, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->d:I

    sget v8, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->d:I

    invoke-direct {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1038
    sget v7, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c:I

    div-int/lit8 v7, v7, 0x2

    sget v8, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c:I

    div-int/lit8 v8, v8, 0x2

    sget v9, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c:I

    div-int/lit8 v9, v9, 0x2

    sget v10, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c:I

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1039
    const/16 v7, 0xb

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1040
    const/16 v7, 0xc

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1041
    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1043
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    sget v7, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->d:I

    sget v8, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->d:I

    invoke-direct {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1044
    const v7, 0x7f10020a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1045
    const v2, 0x7f10020a

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v7, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c:I

    sget v8, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c:I

    sget v9, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c:I

    sget v10, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c:I

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 1047
    new-instance v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;

    iget-object v7, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->b:Lcom/bzbs/bean/StampAgency;

    iget v8, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->a:I

    invoke-static {v7, v8, v1, v3}, Lcom/bzbs/bean/StampSticker;->GetArrayList(Lcom/bzbs/bean/StampAgency;III)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v2, v1, v3, v5, v7}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;ZLandroid/content/Context;)V

    .line 1048
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1050
    const/4 v0, 0x1

    if-ne v5, v0, :cond_19c

    .line 1051
    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1062
    :goto_179
    return-object v6

    .line 1007
    :pswitch_17a
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 1008
    sput v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c:I

    goto/16 :goto_ae

    .line 1011
    :pswitch_181
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 1012
    const/16 v2, 0x14

    sput v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c:I

    goto/16 :goto_ae

    .line 1015
    :pswitch_18a
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 1016
    const/16 v2, 0x1e

    sput v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c:I

    goto/16 :goto_ae

    .line 1019
    :pswitch_193
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 1020
    const/16 v2, 0x1e

    sput v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c:I

    goto/16 :goto_ae

    .line 1053
    :cond_19c
    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1054
    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment$1;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_179

    :cond_1b0
    move v5, v4

    goto/16 :goto_78

    :cond_1b3
    move v1, v2

    goto/16 :goto_61

    :cond_1b6
    move v5, v3

    goto/16 :goto_59

    .line 1005
    nop

    :pswitch_data_1ba
    .packed-switch 0x1
        :pswitch_17a
        :pswitch_181
        :pswitch_18a
        :pswitch_193
    .end packed-switch
.end method
