.class Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter;
.super Landroid/widget/BaseAdapter;
.source "DashboardFragmentNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/DashboardFragmentNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DashboardAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;
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

.field final synthetic this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Ljava/util/ArrayList;)V
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
    .line 1224
    .local p2, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1225
    iput-object p2, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter;->data:Ljava/util/ArrayList;

    .line 1226
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 1229
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1234
    :try_start_0
    iget-object v1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 1236
    :goto_8
    return-object v1

    .line 1235
    :catch_9
    move-exception v0

    .line 1236
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1241
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1263
    iget-object v4, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1265
    .local v2, "strItem":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1266
    .local v0, "holder":Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;
    move-object v3, p2

    .line 1268
    .local v3, "view":Landroid/view/View;
    if-eqz p2, :cond_12

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_55

    .line 1269
    :cond_12
    iget-object v4, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1270
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v4, Lic/buzzebeeslib/R$layout;->bz_dashboard_row_new:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1271
    new-instance v0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;

    .end local v0    # "holder":Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;
    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter;Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;)V

    .line 1272
    .restart local v0    # "holder":Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;
    sget v4, Lic/buzzebeeslib/R$idDashboard;->imgLoading:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;->imgLoading:Landroid/widget/ImageView;

    .line 1273
    sget v4, Lic/buzzebeeslib/R$idDashboard;->layoutDashboardItem:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;->layoutDashboardItem:Landroid/widget/LinearLayout;

    .line 1288
    iget-object v4, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

    # getter for: Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;
    invoke-static {v4}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->access$1(Lic/buzzebeeslib/activity/DashboardFragmentNew;)Lic/buzzebeeslib/holder/DashboardNewHolder;

    move-result-object v4

    iget-object v5, v0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;->imgLoading:Landroid/widget/ImageView;

    iput-object v5, v4, Lic/buzzebeeslib/holder/DashboardNewHolder;->imgLoading:Landroid/widget/ImageView;

    .line 1289
    iget-object v4, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

    # getter for: Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;
    invoke-static {v4}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->access$1(Lic/buzzebeeslib/activity/DashboardFragmentNew;)Lic/buzzebeeslib/holder/DashboardNewHolder;

    move-result-object v4

    iget-object v5, v0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;->layoutDashboardItem:Landroid/widget/LinearLayout;

    iput-object v5, v4, Lic/buzzebeeslib/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    .line 1304
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1309
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_54
    return-object v3

    .line 1306
    :cond_55
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;
    check-cast v0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;

    .restart local v0    # "holder":Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter$ViewHolderDashboardRow;
    goto :goto_54
.end method
