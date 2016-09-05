.class Lcom/rey/material/widget/Spinner$RecycleBin;
.super Ljava/lang/Object;
.source "Spinner.java"


# instance fields
.field final synthetic a:Lcom/rey/material/widget/Spinner;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/rey/material/widget/Spinner;)V
    .registers 3

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/rey/material/widget/Spinner$RecycleBin;->a:Lcom/rey/material/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/rey/material/widget/Spinner$RecycleBin;->b:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/rey/material/widget/Spinner;Lcom/rey/material/widget/Spinner$1;)V
    .registers 3

    .prologue
    .line 1064
    invoke-direct {p0, p1}, Lcom/rey/material/widget/Spinner$RecycleBin;-><init>(Lcom/rey/material/widget/Spinner;)V

    return-void
.end method


# virtual methods
.method a(I)Landroid/view/View;
    .registers 4

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$RecycleBin;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1073
    if-eqz v0, :cond_f

    .line 1074
    iget-object v1, p0, Lcom/rey/material/widget/Spinner$RecycleBin;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1076
    :cond_f
    return-object v0
.end method

.method a()V
    .registers 2

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$RecycleBin;->b:Landroid/util/SparseArray;

    .line 1081
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1082
    return-void
.end method

.method public a(ILandroid/view/View;)V
    .registers 4

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$RecycleBin;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1069
    return-void
.end method
