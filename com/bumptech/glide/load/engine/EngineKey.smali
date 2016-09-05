.class Lcom/bumptech/glide/load/engine/EngineKey;
.super Ljava/lang/Object;
.source "EngineKey.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:Lcom/bumptech/glide/load/ResourceDecoder;

.field private final e:Lcom/bumptech/glide/load/ResourceDecoder;

.field private final f:Lcom/bumptech/glide/load/Transformation;

.field private final g:Lcom/bumptech/glide/load/ResourceEncoder;

.field private final h:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

.field private final i:Lcom/bumptech/glide/load/Encoder;

.field private final j:Lcom/bumptech/glide/load/Key;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Lcom/bumptech/glide/load/Key;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/Encoder;)V
    .registers 11

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->a:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->j:Lcom/bumptech/glide/load/Key;

    .line 36
    iput p3, p0, Lcom/bumptech/glide/load/engine/EngineKey;->b:I

    .line 37
    iput p4, p0, Lcom/bumptech/glide/load/engine/EngineKey;->c:I

    .line 38
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/EngineKey;->d:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 39
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/EngineKey;->e:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 40
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/EngineKey;->f:Lcom/bumptech/glide/load/Transformation;

    .line 41
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/EngineKey;->g:Lcom/bumptech/glide/load/ResourceEncoder;

    .line 42
    iput-object p9, p0, Lcom/bumptech/glide/load/engine/EngineKey;->h:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 43
    iput-object p10, p0, Lcom/bumptech/glide/load/engine/EngineKey;->i:Lcom/bumptech/glide/load/Encoder;

    .line 44
    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/Key;
    .registers 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->m:Lcom/bumptech/glide/load/Key;

    if-nez v0, :cond_f

    .line 48
    new-instance v0, Lcom/bumptech/glide/load/engine/OriginalKey;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->j:Lcom/bumptech/glide/load/Key;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/OriginalKey;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->m:Lcom/bumptech/glide/load/Key;

    .line 50
    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->m:Lcom/bumptech/glide/load/Key;

    return-object v0
.end method

.method public a(Ljava/security/MessageDigest;)V
    .registers 5

    .prologue
    .line 161
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->b:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->c:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->j:Lcom/bumptech/glide/load/Key;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/Key;->a(Ljava/security/MessageDigest;)V

    .line 166
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->a:Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 167
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 168
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->d:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->d:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->a()Ljava/lang/String;

    move-result-object v0

    :goto_34
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 169
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->e:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->e:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->a()Ljava/lang/String;

    move-result-object v0

    :goto_48
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 170
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->f:Lcom/bumptech/glide/load/Transformation;

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->f:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v0}, Lcom/bumptech/glide/load/Transformation;->a()Ljava/lang/String;

    move-result-object v0

    :goto_5c
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 171
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->g:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->g:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceEncoder;->a()Ljava/lang/String;

    move-result-object v0

    :goto_70
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 173
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->i:Lcom/bumptech/glide/load/Encoder;

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->i:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/Encoder;->a()Ljava/lang/String;

    move-result-object v0

    :goto_84
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 174
    return-void

    .line 168
    :cond_8f
    const-string/jumbo v0, ""

    goto :goto_34

    .line 169
    :cond_93
    const-string/jumbo v0, ""

    goto :goto_48

    .line 170
    :cond_97
    const-string/jumbo v0, ""

    goto :goto_5c

    .line 171
    :cond_9b
    const-string/jumbo v0, ""

    goto :goto_70

    .line 173
    :cond_9f
    const-string/jumbo v0, ""

    goto :goto_84
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    if-ne p0, p1, :cond_6

    move v2, v1

    .line 97
    :cond_5
    :goto_5
    return v2

    .line 58
    :cond_6
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v0, v3, :cond_5

    .line 62
    check-cast p1, Lcom/bumptech/glide/load/engine/EngineKey;

    .line 64
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 66
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->j:Lcom/bumptech/glide/load/Key;

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->j:Lcom/bumptech/glide/load/Key;

    invoke-interface {v0, v3}, Lcom/bumptech/glide/load/Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 68
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->c:I

    iget v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->c:I

    if-ne v0, v3, :cond_5

    .line 70
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->b:I

    iget v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->b:I

    if-ne v0, v3, :cond_5

    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->f:Lcom/bumptech/glide/load/Transformation;

    if-nez v0, :cond_109

    move v0, v1

    :goto_39
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->f:Lcom/bumptech/glide/load/Transformation;

    if-nez v3, :cond_10c

    move v3, v1

    :goto_3e
    xor-int/2addr v0, v3

    if-nez v0, :cond_5

    .line 74
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->f:Lcom/bumptech/glide/load/Transformation;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->f:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v0}, Lcom/bumptech/glide/load/Transformation;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->f:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v3}, Lcom/bumptech/glide/load/Transformation;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 76
    :cond_57
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->e:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v0, :cond_10f

    move v0, v1

    :goto_5c
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->e:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v3, :cond_112

    move v3, v1

    :goto_61
    xor-int/2addr v0, v3

    if-nez v0, :cond_5

    .line 78
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->e:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->e:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->e:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceDecoder;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 80
    :cond_7a
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->d:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v0, :cond_115

    move v0, v1

    :goto_7f
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->d:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v3, :cond_118

    move v3, v1

    :goto_84
    xor-int/2addr v0, v3

    if-nez v0, :cond_5

    .line 82
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->d:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->d:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->d:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceDecoder;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 84
    :cond_9d
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->g:Lcom/bumptech/glide/load/ResourceEncoder;

    if-nez v0, :cond_11b

    move v0, v1

    :goto_a2
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->g:Lcom/bumptech/glide/load/ResourceEncoder;

    if-nez v3, :cond_11d

    move v3, v1

    :goto_a7
    xor-int/2addr v0, v3

    if-nez v0, :cond_5

    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->g:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->g:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceEncoder;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->g:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceEncoder;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 88
    :cond_c0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->h:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-nez v0, :cond_11f

    move v0, v1

    :goto_c5
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->h:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-nez v3, :cond_121

    move v3, v1

    :goto_ca
    xor-int/2addr v0, v3

    if-nez v0, :cond_5

    .line 90
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->h:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v0, :cond_e3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->h:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->h:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 92
    :cond_e3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->i:Lcom/bumptech/glide/load/Encoder;

    if-nez v0, :cond_123

    move v0, v1

    :goto_e8
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->i:Lcom/bumptech/glide/load/Encoder;

    if-nez v3, :cond_125

    move v3, v1

    :goto_ed
    xor-int/2addr v0, v3

    if-nez v0, :cond_5

    .line 94
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->i:Lcom/bumptech/glide/load/Encoder;

    if-eqz v0, :cond_106

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->i:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/Encoder;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->i:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/Encoder;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_106
    move v2, v1

    .line 97
    goto/16 :goto_5

    :cond_109
    move v0, v2

    .line 72
    goto/16 :goto_39

    :cond_10c
    move v3, v2

    goto/16 :goto_3e

    :cond_10f
    move v0, v2

    .line 76
    goto/16 :goto_5c

    :cond_112
    move v3, v2

    goto/16 :goto_61

    :cond_115
    move v0, v2

    .line 80
    goto/16 :goto_7f

    :cond_118
    move v3, v2

    goto/16 :goto_84

    :cond_11b
    move v0, v2

    .line 84
    goto :goto_a2

    :cond_11d
    move v3, v2

    goto :goto_a7

    :cond_11f
    move v0, v2

    .line 88
    goto :goto_c5

    :cond_121
    move v3, v2

    goto :goto_ca

    :cond_123
    move v0, v2

    .line 92
    goto :goto_e8

    :cond_125
    move v3, v2

    goto :goto_ed
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 102
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->l:I

    if-nez v0, :cond_aa

    .line 103
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->l:I

    .line 104
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->l:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->j:Lcom/bumptech/glide/load/Key;

    invoke-interface {v2}, Lcom/bumptech/glide/load/Key;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->l:I

    .line 105
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->l:I

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->l:I

    .line 106
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->l:I

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->l:I

    .line 107
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->l:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->d:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->d:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3e
    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->l:I

    .line 108
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->l:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->e:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->e:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_53
    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->l:I

    .line 109
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->l:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->f:Lcom/bumptech/glide/load/Transformation;

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->f:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v0}, Lcom/bumptech/glide/load/Transformation;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_68
    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->l:I

    .line 110
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->l:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->g:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->g:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceEncoder;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7d
    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->l:I

    .line 111
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->l:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->h:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->h:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_92
    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->l:I

    .line 112
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->l:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->i:Lcom/bumptech/glide/load/Encoder;

    if-eqz v2, :cond_a7

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->i:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Encoder;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_a7
    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->l:I

    .line 114
    :cond_aa
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->l:I

    return v0

    :cond_ad
    move v0, v1

    .line 107
    goto :goto_3e

    :cond_af
    move v0, v1

    .line 108
    goto :goto_53

    :cond_b1
    move v0, v1

    .line 109
    goto :goto_68

    :cond_b3
    move v0, v1

    .line 110
    goto :goto_7d

    :cond_b5
    move v0, v1

    .line 111
    goto :goto_92
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x2b

    const/16 v2, 0x27

    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->k:Ljava/lang/String;

    if-nez v0, :cond_e8

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "EngineKey{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->j:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "+["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->d:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->d:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->a()Ljava/lang/String;

    move-result-object v0

    :goto_52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->e:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_f0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->e:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->a()Ljava/lang/String;

    move-result-object v0

    :goto_6c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->f:Lcom/bumptech/glide/load/Transformation;

    if-eqz v0, :cond_f5

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->f:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v0}, Lcom/bumptech/glide/load/Transformation;->a()Ljava/lang/String;

    move-result-object v0

    :goto_86
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->g:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v0, :cond_f9

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->g:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceEncoder;->a()Ljava/lang/String;

    move-result-object v0

    :goto_a0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->h:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v0, :cond_fd

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->h:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->a()Ljava/lang/String;

    move-result-object v0

    :goto_ba
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->i:Lcom/bumptech/glide/load/Encoder;

    if-eqz v0, :cond_101

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->i:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/Encoder;->a()Ljava/lang/String;

    move-result-object v0

    :goto_d4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->k:Ljava/lang/String;

    .line 156
    :cond_e8
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->k:Ljava/lang/String;

    return-object v0

    .line 120
    :cond_eb
    const-string/jumbo v0, ""

    goto/16 :goto_52

    :cond_f0
    const-string/jumbo v0, ""

    goto/16 :goto_6c

    :cond_f5
    const-string/jumbo v0, ""

    goto :goto_86

    :cond_f9
    const-string/jumbo v0, ""

    goto :goto_a0

    :cond_fd
    const-string/jumbo v0, ""

    goto :goto_ba

    :cond_101
    const-string/jumbo v0, ""

    goto :goto_d4
.end method
