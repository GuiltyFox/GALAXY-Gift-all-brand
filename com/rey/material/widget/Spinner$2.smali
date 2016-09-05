.class Lcom/rey/material/widget/Spinner$2;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rey/material/widget/Spinner;->f()V
.end annotation


# instance fields
.field final synthetic a:Lcom/rey/material/widget/ListView;

.field final synthetic b:Lcom/rey/material/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/rey/material/widget/Spinner;Lcom/rey/material/widget/ListView;)V
    .registers 3

    .prologue
    .line 913
    iput-object p1, p0, Lcom/rey/material/widget/Spinner$2;->b:Lcom/rey/material/widget/Spinner;

    iput-object p2, p0, Lcom/rey/material/widget/Spinner$2;->a:Lcom/rey/material/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 916
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$2;->a:Lcom/rey/material/widget/ListView;

    invoke-virtual {v0}, Lcom/rey/material/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 917
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$2;->b:Lcom/rey/material/widget/Spinner;

    invoke-static {v0}, Lcom/rey/material/widget/Spinner;->b(Lcom/rey/material/widget/Spinner;)Lcom/rey/material/drawable/ArrowDrawable;

    move-result-object v0

    sget v1, Lcom/rey/material/drawable/ArrowDrawable;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/rey/material/drawable/ArrowDrawable;->a(IZ)V

    .line 918
    return v2
.end method
