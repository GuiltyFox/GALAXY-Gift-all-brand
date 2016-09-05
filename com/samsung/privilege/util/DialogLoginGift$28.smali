.class final Lcom/samsung/privilege/util/DialogLoginGift$28;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/app/DatePickerDialog;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/app/DatePickerDialog;)V
    .registers 3

    .prologue
    .line 1546
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$28;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$28;->b:Landroid/app/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$28;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1550
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$28;->b:Landroid/app/DatePickerDialog;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/DatePickerDialog;->updateDate(III)V

    .line 1551
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$28;->b:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 1552
    return-void
.end method
