.class final Luk/co/chrisjenx/calligraphy/CalligraphyUtils$1;
.super Ljava/lang/Object;
.source "CalligraphyUtils.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->a(Landroid/widget/TextView;Landroid/graphics/Typeface;Z)Z
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Landroid/graphics/Typeface;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyUtils$1;->a:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyUtils$1;->a:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->a(Ljava/lang/CharSequence;Landroid/graphics/Typeface;)Ljava/lang/CharSequence;

    .line 90
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 81
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 85
    return-void
.end method
