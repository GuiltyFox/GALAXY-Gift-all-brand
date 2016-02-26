.class Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter;
.super Landroid/widget/BaseAdapter;
.source "DashboardFragmentNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/DashboardFragmentNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DashboardAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2729
    .local p2, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2730
    iput-object p2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter;->data:Ljava/util/ArrayList;

    .line 2731
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 2739
    :try_start_0
    iget-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 2741
    :goto_8
    return-object v1

    .line 2740
    :catch_9
    move-exception v0

    .line 2741
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 2746
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2755
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2757
    .local v2, "strItem":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2758
    .local v0, "holder":Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;
    move-object v3, p2

    .line 2760
    .local v3, "view":Landroid/view/View;
    if-eqz p2, :cond_12

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_43

    .line 2761
    :cond_12
    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2762
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0300d7

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 2763
    new-instance v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;

    .end local v0    # "holder":Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;
    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter;Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;)V

    .line 2764
    .restart local v0    # "holder":Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;
    const/high16 v4, 0x7f1d0000

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;->imgLoading:Landroid/widget/ImageView;

    .line 2765
    const v4, 0x7f1d0001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;->layoutDashboardItem:Landroid/widget/LinearLayout;

    .line 2767
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2772
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_42
    return-object v3

    .line 2769
    :cond_43
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;
    check-cast v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;

    .restart local v0    # "holder":Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;
    goto :goto_42
.end method
