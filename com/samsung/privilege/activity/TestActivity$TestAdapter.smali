.class Lcom/samsung/privilege/activity/TestActivity$TestAdapter;
.super Landroid/widget/BaseAdapter;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/TestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TestAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/TestActivity$TestAdapter$ViewHolderMarketPlaceRow;
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

.field final synthetic this$0:Lcom/samsung/privilege/activity/TestActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/TestActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
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
    .line 120
    .local p3, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InAppItem;>;"
    iput-object p1, p0, Lcom/samsung/privilege/activity/TestActivity$TestAdapter;->this$0:Lcom/samsung/privilege/activity/TestActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 121
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/privilege/activity/TestActivity$TestAdapter;->gInflater:Landroid/view/LayoutInflater;

    .line 122
    iput-object p3, p0, Lcom/samsung/privilege/activity/TestActivity$TestAdapter;->data:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/privilege/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/TestActivity$TestAdapter;->font:Landroid/graphics/Typeface;

    .line 124
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/privilege/activity/TestActivity$TestAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 135
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 146
    iget-object v3, p0, Lcom/samsung/privilege/activity/TestActivity$TestAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/InAppItem;

    .line 148
    .local v1, "inAppItem":Lcom/samsung/privilege/bean/InAppItem;
    const/4 v0, 0x0

    .line 149
    .local v0, "holder":Lcom/samsung/privilege/activity/TestActivity$TestAdapter$ViewHolderMarketPlaceRow;
    move-object v2, p2

    .line 151
    .local v2, "view":Landroid/view/View;
    if-eqz p2, :cond_12

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_65

    .line 152
    :cond_12
    iget-object v3, p0, Lcom/samsung/privilege/activity/TestActivity$TestAdapter;->gInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0300b4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 153
    new-instance v0, Lcom/samsung/privilege/activity/TestActivity$TestAdapter$ViewHolderMarketPlaceRow;

    .end local v0    # "holder":Lcom/samsung/privilege/activity/TestActivity$TestAdapter$ViewHolderMarketPlaceRow;
    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/TestActivity$TestAdapter$ViewHolderMarketPlaceRow;-><init>(Lcom/samsung/privilege/activity/TestActivity$TestAdapter;)V

    .line 154
    .restart local v0    # "holder":Lcom/samsung/privilege/activity/TestActivity$TestAdapter$ViewHolderMarketPlaceRow;
    const/high16 v3, 0x7f4d0000

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/samsung/privilege/activity/TestActivity$TestAdapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    .line 155
    const v3, 0x7f430002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/samsung/privilege/activity/TestActivity$TestAdapter$ViewHolderMarketPlaceRow;->tvAgencyName:Landroid/widget/TextView;

    .line 156
    const v3, 0x7f430004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/samsung/privilege/activity/TestActivity$TestAdapter$ViewHolderMarketPlaceRow;->tvCampaignName:Landroid/widget/TextView;

    .line 157
    const v3, 0x7f430005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/samsung/privilege/activity/TestActivity$TestAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    .line 160
    :try_start_4c
    iget-object v3, v0, Lcom/samsung/privilege/activity/TestActivity$TestAdapter$ViewHolderMarketPlaceRow;->tvAgencyName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/privilege/activity/TestActivity$TestAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 161
    iget-object v3, v0, Lcom/samsung/privilege/activity/TestActivity$TestAdapter$ViewHolderMarketPlaceRow;->tvCampaignName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/privilege/activity/TestActivity$TestAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 162
    iget-object v3, v0, Lcom/samsung/privilege/activity/TestActivity$TestAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/privilege/activity/TestActivity$TestAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_61} :catch_6c

    .line 167
    :goto_61
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 199
    :goto_64
    return-object v2

    .line 169
    :cond_65
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/samsung/privilege/activity/TestActivity$TestAdapter$ViewHolderMarketPlaceRow;
    check-cast v0, Lcom/samsung/privilege/activity/TestActivity$TestAdapter$ViewHolderMarketPlaceRow;

    .restart local v0    # "holder":Lcom/samsung/privilege/activity/TestActivity$TestAdapter$ViewHolderMarketPlaceRow;
    goto :goto_64

    .line 163
    :catch_6c
    move-exception v3

    goto :goto_61
.end method
