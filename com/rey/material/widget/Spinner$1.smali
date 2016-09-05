.class Lcom/rey/material/widget/Spinner$1;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rey/material/widget/Spinner;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation


# instance fields
.field final synthetic a:Lcom/rey/material/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/rey/material/widget/Spinner;)V
    .registers 2

    .prologue
    .line 143
    iput-object p1, p0, Lcom/rey/material/widget/Spinner$1;->a:Lcom/rey/material/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$1;->a:Lcom/rey/material/widget/Spinner;

    invoke-static {v0}, Lcom/rey/material/widget/Spinner;->a(Lcom/rey/material/widget/Spinner;)V

    .line 147
    return-void
.end method
