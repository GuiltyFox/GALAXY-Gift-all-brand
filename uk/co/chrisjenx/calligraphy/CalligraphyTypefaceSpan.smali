.class public Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "CalligraphyTypefaceSpan.java"


# instance fields
.field private final a:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .registers 4

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 12
    if-nez p1, :cond_e

    .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "typeface is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_e
    iput-object p1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;->a:Landroid/graphics/Typeface;

    .line 17
    return-void
.end method

.method private a(Landroid/graphics/Paint;)V
    .registers 4

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    .line 32
    :goto_a
    iget-object v1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;->a:Landroid/graphics/Typeface;

    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    .line 34
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1b

    .line 35
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 38
    :cond_1b
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_24

    .line 39
    const/high16 v0, -0x41800000    # -0.25f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 42
    :cond_24
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;->a:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 43
    return-void

    .line 31
    :cond_2a
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;->a(Landroid/graphics/Paint;)V

    .line 22
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;->a(Landroid/graphics/Paint;)V

    .line 27
    return-void
.end method
