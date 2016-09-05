.class final Lcom/samsung/privilege/util/DialogMonthYear$1;
.super Ljava/lang/Object;
.source "DialogMonthYear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogMonthYear;->a(Landroid/content/Context;Landroid/widget/TextView;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogMonthYear$1;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogMonthYear$1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 37
    return-void
.end method
