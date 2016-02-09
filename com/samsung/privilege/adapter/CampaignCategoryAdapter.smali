.class public Lcom/samsung/privilege/adapter/CampaignCategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "CampaignCategoryAdapter.java"


# static fields
.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field private activity:Landroid/app/Activity;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/CampaignCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/privilege/adapter/CampaignCategoryAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .registers 5
    .param p1, "a"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/CampaignCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/CampaignCategory;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/samsung/privilege/adapter/CampaignCategoryAdapter;->activity:Landroid/app/Activity;

    .line 27
    iput-object p2, p0, Lcom/samsung/privilege/adapter/CampaignCategoryAdapter;->data:Ljava/util/ArrayList;

    .line 28
    iget-object v0, p0, Lcom/samsung/privilege/adapter/CampaignCategoryAdapter;->activity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lcom/samsung/privilege/adapter/CampaignCategoryAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/privilege/adapter/CampaignCategoryAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 40
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 44
    iget-object v5, p0, Lcom/samsung/privilege/adapter/CampaignCategoryAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/CampaignCategory;

    .line 46
    .local v0, "category":Lcom/samsung/privilege/bean/CampaignCategory;
    sget-object v5, Lcom/samsung/privilege/adapter/CampaignCategoryAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0300a6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 48
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f3b0001

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 51
    .local v1, "chkCategoryName":Landroid/widget/CheckBox;
    iget-boolean v5, v0, Lcom/samsung/privilege/bean/CampaignCategory;->IsSelected:Z

    if-eqz v5, :cond_47

    .line 52
    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 53
    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 59
    :goto_27
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 62
    const/high16 v5, 0x7f3b0000

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 63
    .local v2, "layoutRoot":Landroid/widget/RelativeLayout;
    const v5, 0x7f3b0002

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 66
    .local v3, "tvCategoryName":Landroid/widget/TextView;
    iget-object v5, v0, Lcom/samsung/privilege/bean/CampaignCategory;->Name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 70
    return-object v4

    .line 55
    .end local v2    # "layoutRoot":Landroid/widget/RelativeLayout;
    .end local v3    # "tvCategoryName":Landroid/widget/TextView;
    :cond_47
    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 56
    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_27
.end method
