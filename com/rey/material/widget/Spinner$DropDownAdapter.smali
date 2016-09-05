.class Lcom/rey/material/widget/Spinner$DropDownAdapter;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# instance fields
.field private a:Landroid/widget/SpinnerAdapter;

.field private b:Landroid/widget/ListAdapter;

.field private c:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/widget/SpinnerAdapter;)V
    .registers 3

    .prologue
    .line 1098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1099
    iput-object p1, p0, Lcom/rey/material/widget/Spinner$DropDownAdapter;->a:Landroid/widget/SpinnerAdapter;

    .line 1100
    instance-of v0, p1, Landroid/widget/ListAdapter;

    if-eqz v0, :cond_d

    .line 1101
    check-cast p1, Landroid/widget/ListAdapter;

    iput-object p1, p0, Lcom/rey/material/widget/Spinner$DropDownAdapter;->b:Landroid/widget/ListAdapter;

    .line 1102
    :cond_d
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/rey/material/widget/Spinner$DropDownAdapter;->c:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1106
    return-void
.end method

.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropDownAdapter;->b:Landroid/widget/ListAdapter;

    .line 1148
    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropDownAdapter;->a:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropDownAdapter;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    goto :goto_5
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropDownAdapter;->a:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropDownAdapter;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropDownAdapter;->a:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropDownAdapter;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropDownAdapter;->a:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropDownAdapter;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_6
.end method

.method public getItemViewType(I)I
    .registers 3

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropDownAdapter;->b:Landroid/widget/ListAdapter;

    .line 1162
    if-eqz v0, :cond_9

    .line 1163
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 1165
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .prologue
    .line 1128
    invoke-virtual {p0, p1, p2, p3}, Lcom/rey/material/widget/Spinner$DropDownAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1129
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1131
    return-object v0
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropDownAdapter;->b:Landroid/widget/ListAdapter;

    .line 1170
    if-eqz v0, :cond_9

    .line 1171
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 1173
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropDownAdapter;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropDownAdapter;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1177
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner$DropDownAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isEnabled(I)Z
    .registers 3

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropDownAdapter;->b:Landroid/widget/ListAdapter;

    .line 1157
    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 1110
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1111
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropDownAdapter;->c:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_17

    .line 1112
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropDownAdapter;->c:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1113
    :cond_17
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropDownAdapter;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_9

    .line 1183
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropDownAdapter;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1184
    :cond_9
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropDownAdapter;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_9

    .line 1189
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropDownAdapter;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1190
    :cond_9
    return-void
.end method
