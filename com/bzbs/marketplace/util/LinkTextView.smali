.class public Lcom/bzbs/marketplace/util/LinkTextView;
.super Ljava/lang/Object;
.source "LinkTextView.java"


# direct methods
.method public static a(Landroid/app/Activity;Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 34
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 35
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 36
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 37
    new-instance v3, Lcom/bzbs/marketplace/util/LinkTextView$1;

    invoke-direct {v3, p3, p0}, Lcom/bzbs/marketplace/util/LinkTextView$1;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    .line 51
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 52
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 22
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 23
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v3, Landroid/text/style/URLSpan;

    invoke-virtual {v2, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 24
    array-length v3, v0

    :goto_17
    if-ge v1, v3, :cond_25

    aget-object v4, v0, v1

    .line 25
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v2, v4, v5}, Lcom/bzbs/marketplace/util/LinkTextView;->a(Landroid/app/Activity;Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;Ljava/lang/String;)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 27
    :cond_25
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 29
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 30
    return-void
.end method
