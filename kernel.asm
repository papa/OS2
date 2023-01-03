
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	e0013103          	ld	sp,-512(sp) # 8000be00 <_GLOBAL_OFFSET_TABLE_+0x48>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	3bd060ef          	jal	ra,80006bd8 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    csrw sscratch, sp
    80001004:	14011073          	csrw	sscratch,sp
    sd x0, 0(sp)
    80001008:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    8000100c:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    80001010:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001014:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001018:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    8000101c:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    80001020:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001024:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001028:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    8000102c:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    80001030:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001034:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001038:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    8000103c:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001040:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001044:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001048:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    8000104c:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001050:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001054:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001058:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    8000105c:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001060:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001064:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001068:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    8000106c:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001070:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001074:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001078:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    8000107c:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001080:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    80001084:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001088:	740030ef          	jal	ra,800047c8 <_ZN5Riscv20handleSupervisorTrapEv>

    ld x0, 0(sp)
    8000108c:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001090:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    80001094:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001098:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001108:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    80001110:	10200073          	sret
	...

0000000080001120 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    ret
    80001214:	00008067          	ret

0000000080001218 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001218:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000121c:	00b29a63          	bne	t0,a1,80001230 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001220:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001224:	fe029ae3          	bnez	t0,80001218 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001228:	00000513          	li	a0,0
    jr ra                  # Return.
    8000122c:	00008067          	ret

0000000080001230 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001230:	00100513          	li	a0,1
    80001234:	00008067          	ret

0000000080001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001238:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000123c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001240:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001244:	0085b083          	ld	ra,8(a1)

    ret
    80001248:	00008067          	ret

000000008000124c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000124c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001250:	00853083          	ld	ra,8(a0)

    80001254:	00008067          	ret

0000000080001258 <_Z6strcpyPKcPc>:
//singleton slab allocator
static slab_allocator_t* slabAllocator = nullptr;

//helping functions
void strcpy(const char* src, char* dst)
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    while(*src != '\0')
    80001264:	00054783          	lbu	a5,0(a0)
    80001268:	00078a63          	beqz	a5,8000127c <_Z6strcpyPKcPc+0x24>
    {
        *dst = *src;
    8000126c:	00f58023          	sb	a5,0(a1)
        src++; dst++;
    80001270:	00150513          	addi	a0,a0,1
    80001274:	00158593          	addi	a1,a1,1
    while(*src != '\0')
    80001278:	fedff06f          	j	80001264 <_Z6strcpyPKcPc+0xc>
    }
    *dst = *src;
    8000127c:	00f58023          	sb	a5,0(a1)
}
    80001280:	00813403          	ld	s0,8(sp)
    80001284:	01010113          	addi	sp,sp,16
    80001288:	00008067          	ret

000000008000128c <_Z17destroy_slab_listPP6slab_s>:

int destroy_slab_list(slab_t** slab)
{
    8000128c:	fd010113          	addi	sp,sp,-48
    80001290:	02113423          	sd	ra,40(sp)
    80001294:	02813023          	sd	s0,32(sp)
    80001298:	00913c23          	sd	s1,24(sp)
    8000129c:	01213823          	sd	s2,16(sp)
    800012a0:	01313423          	sd	s3,8(sp)
    800012a4:	01413023          	sd	s4,0(sp)
    800012a8:	03010413          	addi	s0,sp,48
    if(*slab == nullptr) return 0;
    800012ac:	00053783          	ld	a5,0(a0)
    800012b0:	04078263          	beqz	a5,800012f4 <_Z17destroy_slab_listPP6slab_s+0x68>
    800012b4:	00050493          	mv	s1,a0
    size_t sz = (*slab)->owner->slab_size;
    800012b8:	0107b783          	ld	a5,16(a5)
    800012bc:	0587b983          	ld	s3,88(a5)
    int totalBlocks = 0;
    800012c0:	00000913          	li	s2,0
    while(*slab != nullptr)
    800012c4:	0004b583          	ld	a1,0(s1)
    800012c8:	02058863          	beqz	a1,800012f8 <_Z17destroy_slab_listPP6slab_s+0x6c>
    {
        slab_t* nextSlab = (*slab)->next;
    800012cc:	0085ba03          	ld	s4,8(a1)
        buddy_free(slabAllocator->buddy, *slab, sz);
    800012d0:	00098613          	mv	a2,s3
    800012d4:	0000b797          	auipc	a5,0xb
    800012d8:	bcc7b783          	ld	a5,-1076(a5) # 8000bea0 <_ZL13slabAllocator>
    800012dc:	0007b503          	ld	a0,0(a5)
    800012e0:	00002097          	auipc	ra,0x2
    800012e4:	e60080e7          	jalr	-416(ra) # 80003140 <_Z10buddy_freeP14buddyAllocatorPvm>
        *slab = nextSlab;
    800012e8:	0144b023          	sd	s4,0(s1)
        totalBlocks+=sz;
    800012ec:	0129893b          	addw	s2,s3,s2
    while(*slab != nullptr)
    800012f0:	fd5ff06f          	j	800012c4 <_Z17destroy_slab_listPP6slab_s+0x38>
    if(*slab == nullptr) return 0;
    800012f4:	00000913          	li	s2,0
    }
    return totalBlocks;
}
    800012f8:	00090513          	mv	a0,s2
    800012fc:	02813083          	ld	ra,40(sp)
    80001300:	02013403          	ld	s0,32(sp)
    80001304:	01813483          	ld	s1,24(sp)
    80001308:	01013903          	ld	s2,16(sp)
    8000130c:	00813983          	ld	s3,8(sp)
    80001310:	00013a03          	ld	s4,0(sp)
    80001314:	03010113          	addi	sp,sp,48
    80001318:	00008067          	ret

000000008000131c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>:

void init_cache(kmem_cache_t* cachep, const char* cache_name, size_t slab_size, size_t obj_size, void (*ctor)(void*),void (*dtor)(void*))
{
    8000131c:	fc010113          	addi	sp,sp,-64
    80001320:	02113c23          	sd	ra,56(sp)
    80001324:	02813823          	sd	s0,48(sp)
    80001328:	02913423          	sd	s1,40(sp)
    8000132c:	03213023          	sd	s2,32(sp)
    80001330:	01313c23          	sd	s3,24(sp)
    80001334:	01413823          	sd	s4,16(sp)
    80001338:	01513423          	sd	s5,8(sp)
    8000133c:	04010413          	addi	s0,sp,64
    80001340:	00050493          	mv	s1,a0
    80001344:	00058513          	mv	a0,a1
    80001348:	00060a93          	mv	s5,a2
    8000134c:	00068a13          	mv	s4,a3
    80001350:	00070993          	mv	s3,a4
    80001354:	00078913          	mv	s2,a5
    strcpy(cache_name, cachep->cacheName);
    80001358:	00048593          	mv	a1,s1
    8000135c:	00000097          	auipc	ra,0x0
    80001360:	efc080e7          	jalr	-260(ra) # 80001258 <_Z6strcpyPKcPc>
    cachep->slab_size = slab_size;
    80001364:	0554bc23          	sd	s5,88(s1)
    cachep->obj_size = obj_size;
    80001368:	0744b023          	sd	s4,96(s1)
    cachep->ctor = ctor;
    8000136c:	0734b423          	sd	s3,104(s1)
    cachep->dtor = dtor;
    80001370:	0724b823          	sd	s2,112(s1)

    cachep->slabs_empty = cachep->slabs_partial = cachep->slabs_full = nullptr;
    80001374:	0404b423          	sd	zero,72(s1)
    80001378:	0404b823          	sd	zero,80(s1)
    8000137c:	0404b023          	sd	zero,64(s1)
    cachep->errors = NO_ERROR;
    80001380:	0604ac23          	sw	zero,120(s1)
}
    80001384:	03813083          	ld	ra,56(sp)
    80001388:	03013403          	ld	s0,48(sp)
    8000138c:	02813483          	ld	s1,40(sp)
    80001390:	02013903          	ld	s2,32(sp)
    80001394:	01813983          	ld	s3,24(sp)
    80001398:	01013a03          	ld	s4,16(sp)
    8000139c:	00813a83          	ld	s5,8(sp)
    800013a0:	04010113          	addi	sp,sp,64
    800013a4:	00008067          	ret

00000000800013a8 <_Z19slab_allocator_initP14buddyAllocator>:

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    800013a8:	fe010113          	addi	sp,sp,-32
    800013ac:	00113c23          	sd	ra,24(sp)
    800013b0:	00813823          	sd	s0,16(sp)
    800013b4:	00913423          	sd	s1,8(sp)
    800013b8:	02010413          	addi	s0,sp,32
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);
    800013bc:	0e050493          	addi	s1,a0,224

    slabAllocatorLocal->buddy = buddy;
    800013c0:	0ea53023          	sd	a0,224(a0)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800013c4:	00000793          	li	a5,0
    800013c8:	0140006f          	j	800013dc <_Z19slab_allocator_initP14buddyAllocator+0x34>
        slabAllocatorLocal->cachesBuffers[i] = nullptr;
    800013cc:	00379713          	slli	a4,a5,0x3
    800013d0:	00e50733          	add	a4,a0,a4
    800013d4:	0e073423          	sd	zero,232(a4)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800013d8:	00178793          	addi	a5,a5,1
    800013dc:	00c00713          	li	a4,12
    800013e0:	fef776e3          	bgeu	a4,a5,800013cc <_Z19slab_allocator_initP14buddyAllocator+0x24>

    init_cache(&slabAllocatorLocal->cacheOfCaches, "Cache of caches", CACHE_OF_CACHES_SLAB_SIZE, sizeof(kmem_cache_t), nullptr,nullptr);
    800013e4:	00000793          	li	a5,0
    800013e8:	00000713          	li	a4,0
    800013ec:	08000693          	li	a3,128
    800013f0:	00200613          	li	a2,2
    800013f4:	00008597          	auipc	a1,0x8
    800013f8:	c2c58593          	addi	a1,a1,-980 # 80009020 <CONSOLE_STATUS+0x10>
    800013fc:	15050513          	addi	a0,a0,336
    80001400:	00000097          	auipc	ra,0x0
    80001404:	f1c080e7          	jalr	-228(ra) # 8000131c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>

    return slabAllocatorLocal;
}
    80001408:	00048513          	mv	a0,s1
    8000140c:	01813083          	ld	ra,24(sp)
    80001410:	01013403          	ld	s0,16(sp)
    80001414:	00813483          	ld	s1,8(sp)
    80001418:	02010113          	addi	sp,sp,32
    8000141c:	00008067          	ret

0000000080001420 <_Z13checkSetIndexP6slab_si>:

bool checkSetIndex(slab_t* slab, int index)
{
    80001420:	ff010113          	addi	sp,sp,-16
    80001424:	00813423          	sd	s0,8(sp)
    80001428:	01010413          	addi	s0,sp,16
    return (uint8)slab->allocated[index / 8] & (1 << (index%8));
    8000142c:	41f5d79b          	sraiw	a5,a1,0x1f
    80001430:	01d7d79b          	srliw	a5,a5,0x1d
    80001434:	00b785bb          	addw	a1,a5,a1
    80001438:	4035d71b          	sraiw	a4,a1,0x3
    8000143c:	00e50533          	add	a0,a0,a4
    80001440:	02854503          	lbu	a0,40(a0)
    80001444:	0075f593          	andi	a1,a1,7
    80001448:	40f585bb          	subw	a1,a1,a5
    8000144c:	40b5553b          	sraw	a0,a0,a1
}
    80001450:	00157513          	andi	a0,a0,1
    80001454:	00813403          	ld	s0,8(sp)
    80001458:	01010113          	addi	sp,sp,16
    8000145c:	00008067          	ret

0000000080001460 <_Z17setAllocatedIndexP6slab_si>:

void setAllocatedIndex(slab_t* slab, int index)
{
    80001460:	ff010113          	addi	sp,sp,-16
    80001464:	00813423          	sd	s0,8(sp)
    80001468:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
    8000146c:	41f5d79b          	sraiw	a5,a1,0x1f
    80001470:	01d7d79b          	srliw	a5,a5,0x1d
    80001474:	00b785bb          	addw	a1,a5,a1
    80001478:	4035d71b          	sraiw	a4,a1,0x3
    8000147c:	00e50533          	add	a0,a0,a4
    80001480:	02850703          	lb	a4,40(a0)
    80001484:	0075f593          	andi	a1,a1,7
    80001488:	40f585bb          	subw	a1,a1,a5
    8000148c:	00100793          	li	a5,1
    80001490:	00b795bb          	sllw	a1,a5,a1
    80001494:	00b765b3          	or	a1,a4,a1
    80001498:	02b50423          	sb	a1,40(a0)
}
    8000149c:	00813403          	ld	s0,8(sp)
    800014a0:	01010113          	addi	sp,sp,16
    800014a4:	00008067          	ret

00000000800014a8 <_Z14allocateObjectP6slab_s>:

void* allocateObject(slab_t* slab)
{
    800014a8:	fd010113          	addi	sp,sp,-48
    800014ac:	02113423          	sd	ra,40(sp)
    800014b0:	02813023          	sd	s0,32(sp)
    800014b4:	00913c23          	sd	s1,24(sp)
    800014b8:	01213823          	sd	s2,16(sp)
    800014bc:	01313423          	sd	s3,8(sp)
    800014c0:	03010413          	addi	s0,sp,48
    800014c4:	00050913          	mv	s2,a0
    if(slab == nullptr)
    800014c8:	08050863          	beqz	a0,80001558 <_Z14allocateObjectP6slab_s+0xb0>
        return nullptr;
    int index = -1;
    void* addr = nullptr;
    for(size_t i = 0;i < slab->numOfObjects;i++)
    800014cc:	00000493          	li	s1,0
    800014d0:	01893783          	ld	a5,24(s2)
    800014d4:	02f4fe63          	bgeu	s1,a5,80001510 <_Z14allocateObjectP6slab_s+0x68>
    {
        if(!checkSetIndex(slab, i))
    800014d8:	0004899b          	sext.w	s3,s1
    800014dc:	00098593          	mv	a1,s3
    800014e0:	00090513          	mv	a0,s2
    800014e4:	00000097          	auipc	ra,0x0
    800014e8:	f3c080e7          	jalr	-196(ra) # 80001420 <_Z13checkSetIndexP6slab_si>
    800014ec:	00050663          	beqz	a0,800014f8 <_Z14allocateObjectP6slab_s+0x50>
    for(size_t i = 0;i < slab->numOfObjects;i++)
    800014f0:	00148493          	addi	s1,s1,1
    800014f4:	fddff06f          	j	800014d0 <_Z14allocateObjectP6slab_s+0x28>
        {
            addr = (void*)((size_t)slab + sizeof(slab_t)+ i*slab->owner->obj_size);
    800014f8:	01093783          	ld	a5,16(s2)
    800014fc:	0607b783          	ld	a5,96(a5)
    80001500:	029784b3          	mul	s1,a5,s1
    80001504:	009904b3          	add	s1,s2,s1
    80001508:	42848493          	addi	s1,s1,1064
            index = i;
            break;
    8000150c:	00c0006f          	j	80001518 <_Z14allocateObjectP6slab_s+0x70>
    void* addr = nullptr;
    80001510:	00000493          	li	s1,0
    int index = -1;
    80001514:	fff00993          	li	s3,-1
        }
    }
    if(addr == nullptr)
    80001518:	02048063          	beqz	s1,80001538 <_Z14allocateObjectP6slab_s+0x90>
        return nullptr;

    setAllocatedIndex(slab, index);
    8000151c:	00098593          	mv	a1,s3
    80001520:	00090513          	mv	a0,s2
    80001524:	00000097          	auipc	ra,0x0
    80001528:	f3c080e7          	jalr	-196(ra) # 80001460 <_Z17setAllocatedIndexP6slab_si>
    slab->numOfAllocatedObjects++;
    8000152c:	02093783          	ld	a5,32(s2)
    80001530:	00178793          	addi	a5,a5,1
    80001534:	02f93023          	sd	a5,32(s2)

    return addr;
}
    80001538:	00048513          	mv	a0,s1
    8000153c:	02813083          	ld	ra,40(sp)
    80001540:	02013403          	ld	s0,32(sp)
    80001544:	01813483          	ld	s1,24(sp)
    80001548:	01013903          	ld	s2,16(sp)
    8000154c:	00813983          	ld	s3,8(sp)
    80001550:	03010113          	addi	sp,sp,48
    80001554:	00008067          	ret
        return nullptr;
    80001558:	00050493          	mv	s1,a0
    8000155c:	fddff06f          	j	80001538 <_Z14allocateObjectP6slab_s+0x90>

0000000080001560 <_Z4fullP6slab_s>:

bool full(slab_t* slab)
{
    80001560:	ff010113          	addi	sp,sp,-16
    80001564:	00813423          	sd	s0,8(sp)
    80001568:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == slab->numOfObjects;
    8000156c:	02053783          	ld	a5,32(a0)
    80001570:	01853503          	ld	a0,24(a0)
    80001574:	40f50533          	sub	a0,a0,a5
}
    80001578:	00153513          	seqz	a0,a0
    8000157c:	00813403          	ld	s0,8(sp)
    80001580:	01010113          	addi	sp,sp,16
    80001584:	00008067          	ret

0000000080001588 <_Z5emptyP6slab_s>:

bool empty(slab_t* slab)
{
    80001588:	ff010113          	addi	sp,sp,-16
    8000158c:	00813423          	sd	s0,8(sp)
    80001590:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == 0;
    80001594:	02053503          	ld	a0,32(a0)
}
    80001598:	00153513          	seqz	a0,a0
    8000159c:	00813403          	ld	s0,8(sp)
    800015a0:	01010113          	addi	sp,sp,16
    800015a4:	00008067          	ret

00000000800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>:

void insertIntoSlabList(slab_t* slab, slab_t** slab_head)
{
    800015a8:	ff010113          	addi	sp,sp,-16
    800015ac:	00813423          	sd	s0,8(sp)
    800015b0:	01010413          	addi	s0,sp,16
    if(slab == nullptr)
    800015b4:	00050e63          	beqz	a0,800015d0 <_Z18insertIntoSlabListP6slab_sPS0_+0x28>
        return;
    slab->prev = nullptr;
    800015b8:	00053023          	sd	zero,0(a0)
    slab->next = *slab_head;
    800015bc:	0005b783          	ld	a5,0(a1)
    800015c0:	00f53423          	sd	a5,8(a0)
    if(*slab_head != nullptr)
    800015c4:	00078463          	beqz	a5,800015cc <_Z18insertIntoSlabListP6slab_sPS0_+0x24>
        (*slab_head)->prev = slab;
    800015c8:	00a7b023          	sd	a0,0(a5)
    *slab_head = slab;
    800015cc:	00a5b023          	sd	a0,0(a1)
}
    800015d0:	00813403          	ld	s0,8(sp)
    800015d4:	01010113          	addi	sp,sp,16
    800015d8:	00008067          	ret

00000000800015dc <_Z18removeFromSlabListP6slab_sPS0_>:

void removeFromSlabList(slab_t* slab, slab_t** slab_head)
{
    800015dc:	ff010113          	addi	sp,sp,-16
    800015e0:	00813423          	sd	s0,8(sp)
    800015e4:	01010413          	addi	s0,sp,16
    if(slab->prev == nullptr) //same as slab == *slab_head
    800015e8:	00053783          	ld	a5,0(a0)
    800015ec:	02078663          	beqz	a5,80001618 <_Z18removeFromSlabListP6slab_sPS0_+0x3c>
        (*slab_head) = slab->next;
        slab->next = slab->prev = nullptr;
    }
    else
    {
        slab->prev->next = slab->next;
    800015f0:	00853703          	ld	a4,8(a0)
    800015f4:	00e7b423          	sd	a4,8(a5)
        if(slab->next) slab->next->prev = slab->prev;
    800015f8:	00070663          	beqz	a4,80001604 <_Z18removeFromSlabListP6slab_sPS0_+0x28>
    800015fc:	00053783          	ld	a5,0(a0)
    80001600:	00f73023          	sd	a5,0(a4)
        slab->next = slab->prev = nullptr;
    80001604:	00053023          	sd	zero,0(a0)
    80001608:	00053423          	sd	zero,8(a0)
    }
}
    8000160c:	00813403          	ld	s0,8(sp)
    80001610:	01010113          	addi	sp,sp,16
    80001614:	00008067          	ret
        if(slab->next) slab->next->prev = nullptr;
    80001618:	00853783          	ld	a5,8(a0)
    8000161c:	00078463          	beqz	a5,80001624 <_Z18removeFromSlabListP6slab_sPS0_+0x48>
    80001620:	0007b023          	sd	zero,0(a5)
        (*slab_head) = slab->next;
    80001624:	00853783          	ld	a5,8(a0)
    80001628:	00f5b023          	sd	a5,0(a1)
        slab->next = slab->prev = nullptr;
    8000162c:	00053023          	sd	zero,0(a0)
    80001630:	00053423          	sd	zero,8(a0)
    80001634:	fd9ff06f          	j	8000160c <_Z18removeFromSlabListP6slab_sPS0_+0x30>

0000000080001638 <_Z16putPartialToFullP12kmem_cache_s>:

void putPartialToFull(kmem_cache_t* cachep)
{
    80001638:	fe010113          	addi	sp,sp,-32
    8000163c:	00113c23          	sd	ra,24(sp)
    80001640:	00813823          	sd	s0,16(sp)
    80001644:	00913423          	sd	s1,8(sp)
    80001648:	01213023          	sd	s2,0(sp)
    8000164c:	02010413          	addi	s0,sp,32
    80001650:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_partial;
    80001654:	05053903          	ld	s2,80(a0)
    removeFromSlabList(slab, &cachep->slabs_partial);
    80001658:	05050593          	addi	a1,a0,80
    8000165c:	00090513          	mv	a0,s2
    80001660:	00000097          	auipc	ra,0x0
    80001664:	f7c080e7          	jalr	-132(ra) # 800015dc <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_full);
    80001668:	04848593          	addi	a1,s1,72
    8000166c:	00090513          	mv	a0,s2
    80001670:	00000097          	auipc	ra,0x0
    80001674:	f38080e7          	jalr	-200(ra) # 800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001678:	01813083          	ld	ra,24(sp)
    8000167c:	01013403          	ld	s0,16(sp)
    80001680:	00813483          	ld	s1,8(sp)
    80001684:	00013903          	ld	s2,0(sp)
    80001688:	02010113          	addi	sp,sp,32
    8000168c:	00008067          	ret

0000000080001690 <_Z17putEmptyToPartialP12kmem_cache_s>:

void putEmptyToPartial(kmem_cache_t* cachep)
{
    80001690:	fe010113          	addi	sp,sp,-32
    80001694:	00113c23          	sd	ra,24(sp)
    80001698:	00813823          	sd	s0,16(sp)
    8000169c:	00913423          	sd	s1,8(sp)
    800016a0:	01213023          	sd	s2,0(sp)
    800016a4:	02010413          	addi	s0,sp,32
    800016a8:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_empty;
    800016ac:	04053903          	ld	s2,64(a0)
    removeFromSlabList(slab, &cachep->slabs_empty);
    800016b0:	04050593          	addi	a1,a0,64
    800016b4:	00090513          	mv	a0,s2
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	f24080e7          	jalr	-220(ra) # 800015dc <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    800016c0:	05048593          	addi	a1,s1,80
    800016c4:	00090513          	mv	a0,s2
    800016c8:	00000097          	auipc	ra,0x0
    800016cc:	ee0080e7          	jalr	-288(ra) # 800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800016d0:	01813083          	ld	ra,24(sp)
    800016d4:	01013403          	ld	s0,16(sp)
    800016d8:	00813483          	ld	s1,8(sp)
    800016dc:	00013903          	ld	s2,0(sp)
    800016e0:	02010113          	addi	sp,sp,32
    800016e4:	00008067          	ret

00000000800016e8 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>:

void removeFullSlab(kmem_cache_t* cachep, slab_t* slab)
{
    800016e8:	fe010113          	addi	sp,sp,-32
    800016ec:	00113c23          	sd	ra,24(sp)
    800016f0:	00813823          	sd	s0,16(sp)
    800016f4:	00913423          	sd	s1,8(sp)
    800016f8:	01213023          	sd	s2,0(sp)
    800016fc:	02010413          	addi	s0,sp,32
    80001700:	00050913          	mv	s2,a0
    80001704:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_full);
    80001708:	04850593          	addi	a1,a0,72
    8000170c:	00048513          	mv	a0,s1
    80001710:	00000097          	auipc	ra,0x0
    80001714:	ecc080e7          	jalr	-308(ra) # 800015dc <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001718:	05090593          	addi	a1,s2,80
    8000171c:	00048513          	mv	a0,s1
    80001720:	00000097          	auipc	ra,0x0
    80001724:	e88080e7          	jalr	-376(ra) # 800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001728:	01813083          	ld	ra,24(sp)
    8000172c:	01013403          	ld	s0,16(sp)
    80001730:	00813483          	ld	s1,8(sp)
    80001734:	00013903          	ld	s2,0(sp)
    80001738:	02010113          	addi	sp,sp,32
    8000173c:	00008067          	ret

0000000080001740 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>:

void removePartialSlab(kmem_cache_t * cachep, slab_t* slab)
{
    80001740:	fe010113          	addi	sp,sp,-32
    80001744:	00113c23          	sd	ra,24(sp)
    80001748:	00813823          	sd	s0,16(sp)
    8000174c:	00913423          	sd	s1,8(sp)
    80001750:	01213023          	sd	s2,0(sp)
    80001754:	02010413          	addi	s0,sp,32
    80001758:	00050913          	mv	s2,a0
    8000175c:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_partial);
    80001760:	05050593          	addi	a1,a0,80
    80001764:	00048513          	mv	a0,s1
    80001768:	00000097          	auipc	ra,0x0
    8000176c:	e74080e7          	jalr	-396(ra) # 800015dc <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_empty);
    80001770:	04090593          	addi	a1,s2,64
    80001774:	00048513          	mv	a0,s1
    80001778:	00000097          	auipc	ra,0x0
    8000177c:	e30080e7          	jalr	-464(ra) # 800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001780:	01813083          	ld	ra,24(sp)
    80001784:	01013403          	ld	s0,16(sp)
    80001788:	00813483          	ld	s1,8(sp)
    8000178c:	00013903          	ld	s2,0(sp)
    80001790:	02010113          	addi	sp,sp,32
    80001794:	00008067          	ret

0000000080001798 <_Z12allocateSlabP12kmem_cache_s>:

void allocateSlab(kmem_cache_t* cachep)
{
    80001798:	fd010113          	addi	sp,sp,-48
    8000179c:	02113423          	sd	ra,40(sp)
    800017a0:	02813023          	sd	s0,32(sp)
    800017a4:	00913c23          	sd	s1,24(sp)
    800017a8:	01213823          	sd	s2,16(sp)
    800017ac:	01313423          	sd	s3,8(sp)
    800017b0:	03010413          	addi	s0,sp,48
    800017b4:	00050993          	mv	s3,a0
    slab_t* newSlab = (slab_t*)buddy_alloc(slabAllocator->buddy,cachep->slab_size);
    800017b8:	05853583          	ld	a1,88(a0)
    800017bc:	0000a797          	auipc	a5,0xa
    800017c0:	6e47b783          	ld	a5,1764(a5) # 8000bea0 <_ZL13slabAllocator>
    800017c4:	0007b503          	ld	a0,0(a5)
    800017c8:	00001097          	auipc	ra,0x1
    800017cc:	688080e7          	jalr	1672(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
    if(newSlab == nullptr)
    800017d0:	08050c63          	beqz	a0,80001868 <_Z12allocateSlabP12kmem_cache_s+0xd0>
    800017d4:	00050493          	mv	s1,a0
        return;
    newSlab->next = cachep->slabs_empty;
    800017d8:	0409b783          	ld	a5,64(s3)
    800017dc:	00f53423          	sd	a5,8(a0)
    if(cachep->slabs_empty != nullptr)
    800017e0:	00078463          	beqz	a5,800017e8 <_Z12allocateSlabP12kmem_cache_s+0x50>
        cachep->slabs_empty->prev = newSlab;
    800017e4:	00a7b023          	sd	a0,0(a5)
    cachep->slabs_empty = newSlab;
    800017e8:	0499b023          	sd	s1,64(s3)
    newSlab->prev = nullptr;
    800017ec:	0004b023          	sd	zero,0(s1)

    newSlab->numOfAllocatedObjects = 0;
    800017f0:	0204b023          	sd	zero,32(s1)
    newSlab->owner = cachep;
    800017f4:	0134b823          	sd	s3,16(s1)
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    800017f8:	0589b683          	ld	a3,88(s3)
    800017fc:	00c69693          	slli	a3,a3,0xc
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    80001800:	bd868693          	addi	a3,a3,-1064
    80001804:	0609b783          	ld	a5,96(s3)
    80001808:	02f6d6b3          	divu	a3,a3,a5
    8000180c:	00d4bc23          	sd	a3,24(s1)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    80001810:	00000713          	li	a4,0
    80001814:	00768793          	addi	a5,a3,7
    80001818:	0037d793          	srli	a5,a5,0x3
    8000181c:	00f77a63          	bgeu	a4,a5,80001830 <_Z12allocateSlabP12kmem_cache_s+0x98>
        newSlab->allocated[i] = 0;
    80001820:	00e487b3          	add	a5,s1,a4
    80001824:	02078423          	sb	zero,40(a5)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    80001828:	00170713          	addi	a4,a4,1
    8000182c:	fe9ff06f          	j	80001814 <_Z12allocateSlabP12kmem_cache_s+0x7c>

    if(cachep->ctor != nullptr)
    80001830:	0689b783          	ld	a5,104(s3)
    80001834:	02078a63          	beqz	a5,80001868 <_Z12allocateSlabP12kmem_cache_s+0xd0>
    {
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    80001838:	00000913          	li	s2,0
    8000183c:	0184b783          	ld	a5,24(s1)
    80001840:	02f97463          	bgeu	s2,a5,80001868 <_Z12allocateSlabP12kmem_cache_s+0xd0>
            cachep->ctor((void*)((size_t)newSlab + sizeof(slab_t) + i*newSlab->owner->obj_size));
    80001844:	0689b783          	ld	a5,104(s3)
    80001848:	0104b703          	ld	a4,16(s1)
    8000184c:	06073503          	ld	a0,96(a4)
    80001850:	03250533          	mul	a0,a0,s2
    80001854:	00a48533          	add	a0,s1,a0
    80001858:	42850513          	addi	a0,a0,1064
    8000185c:	000780e7          	jalr	a5
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    80001860:	00190913          	addi	s2,s2,1
    80001864:	fd9ff06f          	j	8000183c <_Z12allocateSlabP12kmem_cache_s+0xa4>
    }
}
    80001868:	02813083          	ld	ra,40(sp)
    8000186c:	02013403          	ld	s0,32(sp)
    80001870:	01813483          	ld	s1,24(sp)
    80001874:	01013903          	ld	s2,16(sp)
    80001878:	00813983          	ld	s3,8(sp)
    8000187c:	03010113          	addi	sp,sp,48
    80001880:	00008067          	ret

0000000080001884 <_Z18getOptimalSlabSizem>:

size_t getOptimalSlabSize(size_t obj_size)
{
    80001884:	ff010113          	addi	sp,sp,-16
    80001888:	00813423          	sd	s0,8(sp)
    8000188c:	01010413          	addi	s0,sp,16
    size_t bestSize = BLOCK_SIZE;
    80001890:	000017b7          	lui	a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    80001894:	42850713          	addi	a4,a0,1064
    80001898:	00e7f663          	bgeu	a5,a4,800018a4 <_Z18getOptimalSlabSizem+0x20>
        bestSize<<=1;
    8000189c:	00179793          	slli	a5,a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800018a0:	ff5ff06f          	j	80001894 <_Z18getOptimalSlabSizem+0x10>
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;
    800018a4:	bd878593          	addi	a1,a5,-1064 # bd8 <_entry-0x7ffff428>
    800018a8:	02a5f5b3          	remu	a1,a1,a0

    //return bestSize / BLOCK_SIZE;

    static size_t lowerConst = 1;
    static size_t highConst = 4;
    for(size_t i = lowerConst;i<=highConst;i++)
    800018ac:	00100693          	li	a3,1
    800018b0:	0080006f          	j	800018b8 <_Z18getOptimalSlabSizem+0x34>
    800018b4:	00168693          	addi	a3,a3,1
    800018b8:	00400713          	li	a4,4
    800018bc:	02d76063          	bltu	a4,a3,800018dc <_Z18getOptimalSlabSizem+0x58>
    {
        size_t newSize = bestSize << i;
    800018c0:	00d79633          	sll	a2,a5,a3
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
    800018c4:	bd860713          	addi	a4,a2,-1064
    800018c8:	02a77733          	remu	a4,a4,a0
        if(newWaste < optimalWaste)
    800018cc:	feb774e3          	bgeu	a4,a1,800018b4 <_Z18getOptimalSlabSizem+0x30>
        {
            optimalWaste = newWaste;
    800018d0:	00070593          	mv	a1,a4
            bestSize = newSize;
    800018d4:	00060793          	mv	a5,a2
    800018d8:	fddff06f          	j	800018b4 <_Z18getOptimalSlabSizem+0x30>
        }
    }

    return bestSize / BLOCK_SIZE;
}
    800018dc:	00c7d513          	srli	a0,a5,0xc
    800018e0:	00813403          	ld	s0,8(sp)
    800018e4:	01010113          	addi	sp,sp,16
    800018e8:	00008067          	ret

00000000800018ec <_Z8findSlabP12kmem_cache_sPKv>:

//finds the slab where objp is
slab_t* findSlab(kmem_cache_t* cachep, const void* objp)
{
    800018ec:	ff010113          	addi	sp,sp,-16
    800018f0:	00813423          	sd	s0,8(sp)
    800018f4:	01010413          	addi	s0,sp,16
    800018f8:	00050693          	mv	a3,a0
    if(cachep == nullptr || objp == nullptr)
    800018fc:	02050c63          	beqz	a0,80001934 <_Z8findSlabP12kmem_cache_sPKv+0x48>
    80001900:	06058a63          	beqz	a1,80001974 <_Z8findSlabP12kmem_cache_sPKv+0x88>
        return nullptr;
    slab_t* slab = cachep->slabs_full;
    80001904:	04853503          	ld	a0,72(a0)
    80001908:	0080006f          	j	80001910 <_Z8findSlabP12kmem_cache_sPKv+0x24>
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    8000190c:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    80001910:	02050863          	beqz	a0,80001940 <_Z8findSlabP12kmem_cache_sPKv+0x54>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001914:	01853783          	ld	a5,24(a0)
    80001918:	01053703          	ld	a4,16(a0)
    8000191c:	06073703          	ld	a4,96(a4)
    80001920:	02e787b3          	mul	a5,a5,a4
    80001924:	00a787b3          	add	a5,a5,a0
    80001928:	42878793          	addi	a5,a5,1064
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    8000192c:	feb570e3          	bgeu	a0,a1,8000190c <_Z8findSlabP12kmem_cache_sPKv+0x20>
    80001930:	fcf5fee3          	bgeu	a1,a5,8000190c <_Z8findSlabP12kmem_cache_sPKv+0x20>
            return slab;
        slab = slab->next;
    }

    return nullptr;
}
    80001934:	00813403          	ld	s0,8(sp)
    80001938:	01010113          	addi	sp,sp,16
    8000193c:	00008067          	ret
    slab = cachep->slabs_partial;
    80001940:	0506b503          	ld	a0,80(a3)
    80001944:	0080006f          	j	8000194c <_Z8findSlabP12kmem_cache_sPKv+0x60>
        slab = slab->next;
    80001948:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    8000194c:	fe0504e3          	beqz	a0,80001934 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001950:	01853783          	ld	a5,24(a0)
    80001954:	01053703          	ld	a4,16(a0)
    80001958:	06073703          	ld	a4,96(a4)
    8000195c:	02e787b3          	mul	a5,a5,a4
    80001960:	00a787b3          	add	a5,a5,a0
    80001964:	42878793          	addi	a5,a5,1064
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    80001968:	feb570e3          	bgeu	a0,a1,80001948 <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    8000196c:	fcf5fee3          	bgeu	a1,a5,80001948 <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    80001970:	fc5ff06f          	j	80001934 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        return nullptr;
    80001974:	00058513          	mv	a0,a1
    80001978:	fbdff06f          	j	80001934 <_Z8findSlabP12kmem_cache_sPKv+0x48>

000000008000197c <_Z19resetAllocatedIndexP6slab_si>:

void resetAllocatedIndex(slab_t* slab, int index)
{
    8000197c:	ff010113          	addi	sp,sp,-16
    80001980:	00813423          	sd	s0,8(sp)
    80001984:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] & ~(1 << (index%8));
    80001988:	41f5d79b          	sraiw	a5,a1,0x1f
    8000198c:	01d7d79b          	srliw	a5,a5,0x1d
    80001990:	00b785bb          	addw	a1,a5,a1
    80001994:	4035d71b          	sraiw	a4,a1,0x3
    80001998:	00e50533          	add	a0,a0,a4
    8000199c:	02850703          	lb	a4,40(a0)
    800019a0:	0075f593          	andi	a1,a1,7
    800019a4:	40f585bb          	subw	a1,a1,a5
    800019a8:	00100793          	li	a5,1
    800019ac:	00b795bb          	sllw	a1,a5,a1
    800019b0:	fff5c593          	not	a1,a1
    800019b4:	00b775b3          	and	a1,a4,a1
    800019b8:	02b50423          	sb	a1,40(a0)
}
    800019bc:	00813403          	ld	s0,8(sp)
    800019c0:	01010113          	addi	sp,sp,16
    800019c4:	00008067          	ret

00000000800019c8 <_Z13printSlabInfoP6slab_s>:

void printSlabInfo(slab_t* slab)
{
    800019c8:	fe010113          	addi	sp,sp,-32
    800019cc:	00113c23          	sd	ra,24(sp)
    800019d0:	00813823          	sd	s0,16(sp)
    800019d4:	00913423          	sd	s1,8(sp)
    800019d8:	02010413          	addi	s0,sp,32
    800019dc:	00050493          	mv	s1,a0
    KConsole::trapPrintString("One slab info---------\n");
    800019e0:	00007517          	auipc	a0,0x7
    800019e4:	65050513          	addi	a0,a0,1616 # 80009030 <CONSOLE_STATUS+0x20>
    800019e8:	00002097          	auipc	ra,0x2
    800019ec:	da0080e7          	jalr	-608(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab address ",(size_t)slab,16);
    800019f0:	01000613          	li	a2,16
    800019f4:	00048593          	mv	a1,s1
    800019f8:	00007517          	auipc	a0,0x7
    800019fc:	65050513          	addi	a0,a0,1616 # 80009048 <CONSOLE_STATUS+0x38>
    80001a00:	00002097          	auipc	ra,0x2
    80001a04:	e60080e7          	jalr	-416(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of allocated objects ",slab->numOfAllocatedObjects);
    80001a08:	00a00613          	li	a2,10
    80001a0c:	0204b583          	ld	a1,32(s1)
    80001a10:	00007517          	auipc	a0,0x7
    80001a14:	64850513          	addi	a0,a0,1608 # 80009058 <CONSOLE_STATUS+0x48>
    80001a18:	00002097          	auipc	ra,0x2
    80001a1c:	e48080e7          	jalr	-440(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of objects ", slab->numOfObjects);
    80001a20:	00a00613          	li	a2,10
    80001a24:	0184b583          	ld	a1,24(s1)
    80001a28:	00007517          	auipc	a0,0x7
    80001a2c:	65050513          	addi	a0,a0,1616 # 80009078 <CONSOLE_STATUS+0x68>
    80001a30:	00002097          	auipc	ra,0x2
    80001a34:	e30080e7          	jalr	-464(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
        KConsole::trapPrintInt(i);
        KConsole::trapPrintString(" : ");
        KConsole::trapPrintInt((size_t)slab->allocated[i], 16);
        KConsole::trapPrintString("\n");
    }*/
}
    80001a38:	01813083          	ld	ra,24(sp)
    80001a3c:	01013403          	ld	s0,16(sp)
    80001a40:	00813483          	ld	s1,8(sp)
    80001a44:	02010113          	addi	sp,sp,32
    80001a48:	00008067          	ret

0000000080001a4c <_Z16free_slab_objectP6slab_sPKv>:

void free_slab_object(slab_t* slab, const void* objp)
{
    if(slab == nullptr || objp == nullptr)
    80001a4c:	12050a63          	beqz	a0,80001b80 <_Z16free_slab_objectP6slab_sPKv+0x134>
{
    80001a50:	fd010113          	addi	sp,sp,-48
    80001a54:	02113423          	sd	ra,40(sp)
    80001a58:	02813023          	sd	s0,32(sp)
    80001a5c:	00913c23          	sd	s1,24(sp)
    80001a60:	01213823          	sd	s2,16(sp)
    80001a64:	01313423          	sd	s3,8(sp)
    80001a68:	01413023          	sd	s4,0(sp)
    80001a6c:	03010413          	addi	s0,sp,48
    80001a70:	00050493          	mv	s1,a0
    80001a74:	00058993          	mv	s3,a1
    if(slab == nullptr || objp == nullptr)
    80001a78:	08058463          	beqz	a1,80001b00 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;
    int indexOfObject = ((size_t)objp - sizeof(slab_t) - (size_t)slab) / slab->owner->obj_size;
    80001a7c:	40a58933          	sub	s2,a1,a0
    80001a80:	bd890913          	addi	s2,s2,-1064
    80001a84:	01053a03          	ld	s4,16(a0)
    80001a88:	060a3783          	ld	a5,96(s4)
    80001a8c:	02f95933          	divu	s2,s2,a5
    80001a90:	0009091b          	sext.w	s2,s2
    if((size_t)objp != (size_t)slab + sizeof(slab_t) + indexOfObject*slab->owner->obj_size) //address not allocated, random address
    80001a94:	032787b3          	mul	a5,a5,s2
    80001a98:	00f507b3          	add	a5,a0,a5
    80001a9c:	42878793          	addi	a5,a5,1064
    80001aa0:	06f59063          	bne	a1,a5,80001b00 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;

    if(!checkSetIndex(slab, indexOfObject))
    80001aa4:	00090593          	mv	a1,s2
    80001aa8:	00000097          	auipc	ra,0x0
    80001aac:	978080e7          	jalr	-1672(ra) # 80001420 <_Z13checkSetIndexP6slab_si>
    80001ab0:	04050863          	beqz	a0,80001b00 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;

    kmem_cache_t* cachep = slab->owner;
    if(cachep->dtor != nullptr)
    80001ab4:	070a3783          	ld	a5,112(s4)
    80001ab8:	00078663          	beqz	a5,80001ac4 <_Z16free_slab_objectP6slab_sPKv+0x78>
        cachep->dtor((void*)objp);
    80001abc:	00098513          	mv	a0,s3
    80001ac0:	000780e7          	jalr	a5
    if(cachep->ctor != nullptr)
    80001ac4:	068a3783          	ld	a5,104(s4)
    80001ac8:	00078663          	beqz	a5,80001ad4 <_Z16free_slab_objectP6slab_sPKv+0x88>
        cachep->ctor((void*)objp);
    80001acc:	00098513          	mv	a0,s3
    80001ad0:	000780e7          	jalr	a5

    resetAllocatedIndex(slab, indexOfObject);
    80001ad4:	00090593          	mv	a1,s2
    80001ad8:	00048513          	mv	a0,s1
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	ea0080e7          	jalr	-352(ra) # 8000197c <_Z19resetAllocatedIndexP6slab_si>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
    80001ae4:	0184b703          	ld	a4,24(s1)
    80001ae8:	0204b783          	ld	a5,32(s1)
    80001aec:	02f70a63          	beq	a4,a5,80001b20 <_Z16free_slab_objectP6slab_sPKv+0xd4>
        removeFullSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
        if(empty(slab))
            removePartialSlab(slab->owner, slab);
    }
    else if(slab->numOfAllocatedObjects == 1)
    80001af0:	00100713          	li	a4,1
    80001af4:	06e78663          	beq	a5,a4,80001b60 <_Z16free_slab_objectP6slab_sPKv+0x114>
    {
        removePartialSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
    }
    else
        slab->numOfAllocatedObjects--;
    80001af8:	fff78793          	addi	a5,a5,-1
    80001afc:	02f4b023          	sd	a5,32(s1)
}
    80001b00:	02813083          	ld	ra,40(sp)
    80001b04:	02013403          	ld	s0,32(sp)
    80001b08:	01813483          	ld	s1,24(sp)
    80001b0c:	01013903          	ld	s2,16(sp)
    80001b10:	00813983          	ld	s3,8(sp)
    80001b14:	00013a03          	ld	s4,0(sp)
    80001b18:	03010113          	addi	sp,sp,48
    80001b1c:	00008067          	ret
        removeFullSlab(slab->owner, slab);
    80001b20:	00048593          	mv	a1,s1
    80001b24:	0104b503          	ld	a0,16(s1)
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	bc0080e7          	jalr	-1088(ra) # 800016e8 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001b30:	0204b783          	ld	a5,32(s1)
    80001b34:	fff78793          	addi	a5,a5,-1
    80001b38:	02f4b023          	sd	a5,32(s1)
        if(empty(slab))
    80001b3c:	00048513          	mv	a0,s1
    80001b40:	00000097          	auipc	ra,0x0
    80001b44:	a48080e7          	jalr	-1464(ra) # 80001588 <_Z5emptyP6slab_s>
    80001b48:	fa050ce3          	beqz	a0,80001b00 <_Z16free_slab_objectP6slab_sPKv+0xb4>
            removePartialSlab(slab->owner, slab);
    80001b4c:	00048593          	mv	a1,s1
    80001b50:	0104b503          	ld	a0,16(s1)
    80001b54:	00000097          	auipc	ra,0x0
    80001b58:	bec080e7          	jalr	-1044(ra) # 80001740 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
    80001b5c:	fa5ff06f          	j	80001b00 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        removePartialSlab(slab->owner, slab);
    80001b60:	00048593          	mv	a1,s1
    80001b64:	0104b503          	ld	a0,16(s1)
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	bd8080e7          	jalr	-1064(ra) # 80001740 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001b70:	0204b783          	ld	a5,32(s1)
    80001b74:	fff78793          	addi	a5,a5,-1
    80001b78:	02f4b023          	sd	a5,32(s1)
    80001b7c:	f85ff06f          	j	80001b00 <_Z16free_slab_objectP6slab_sPKv+0xb4>
    80001b80:	00008067          	ret

0000000080001b84 <_Z9kmem_initPvi>:
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
}

//slab allocator public interface-----------------------------------------------------------------------------
void kmem_init(void *space, int block_num)
{
    80001b84:	ff010113          	addi	sp,sp,-16
    80001b88:	00113423          	sd	ra,8(sp)
    80001b8c:	00813023          	sd	s0,0(sp)
    80001b90:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init(space, block_num);
    80001b94:	00001097          	auipc	ra,0x1
    80001b98:	4cc080e7          	jalr	1228(ra) # 80003060 <_Z10buddy_initPvm>
    slabAllocator = slab_allocator_init(buddy);
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	80c080e7          	jalr	-2036(ra) # 800013a8 <_Z19slab_allocator_initP14buddyAllocator>
    80001ba4:	0000a797          	auipc	a5,0xa
    80001ba8:	2ea7be23          	sd	a0,764(a5) # 8000bea0 <_ZL13slabAllocator>
}
    80001bac:	00813083          	ld	ra,8(sp)
    80001bb0:	00013403          	ld	s0,0(sp)
    80001bb4:	01010113          	addi	sp,sp,16
    80001bb8:	00008067          	ret

0000000080001bbc <_Z16kmem_cache_allocP12kmem_cache_s>:
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    return newCache;
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    80001bbc:	fe010113          	addi	sp,sp,-32
    80001bc0:	00113c23          	sd	ra,24(sp)
    80001bc4:	00813823          	sd	s0,16(sp)
    80001bc8:	00913423          	sd	s1,8(sp)
    80001bcc:	01213023          	sd	s2,0(sp)
    80001bd0:	02010413          	addi	s0,sp,32
    80001bd4:	00050493          	mv	s1,a0
    if(cachep == nullptr)
    80001bd8:	10050a63          	beqz	a0,80001cec <_Z16kmem_cache_allocP12kmem_cache_s+0x130>
        return nullptr;

    if(cachep->slabs_partial != nullptr)
    80001bdc:	05053503          	ld	a0,80(a0)
    80001be0:	04051a63          	bnez	a0,80001c34 <_Z16kmem_cache_allocP12kmem_cache_s+0x78>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
        if(full(cachep->slabs_partial))
            putPartialToFull(cachep);
        return allocatedAddr;
    }
    else if(cachep->slabs_empty != nullptr)
    80001be4:	0404b503          	ld	a0,64(s1)
    80001be8:	08050a63          	beqz	a0,80001c7c <_Z16kmem_cache_allocP12kmem_cache_s+0xc0>
    {
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	8bc080e7          	jalr	-1860(ra) # 800014a8 <_Z14allocateObjectP6slab_s>
    80001bf4:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001bf8:	0404b503          	ld	a0,64(s1)
    80001bfc:	00000097          	auipc	ra,0x0
    80001c00:	98c080e7          	jalr	-1652(ra) # 80001588 <_Z5emptyP6slab_s>
    80001c04:	04051663          	bnez	a0,80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        {
            putEmptyToPartial(cachep);
    80001c08:	00048513          	mv	a0,s1
    80001c0c:	00000097          	auipc	ra,0x0
    80001c10:	a84080e7          	jalr	-1404(ra) # 80001690 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001c14:	0504b503          	ld	a0,80(s1)
    80001c18:	00000097          	auipc	ra,0x0
    80001c1c:	948080e7          	jalr	-1720(ra) # 80001560 <_Z4fullP6slab_s>
    80001c20:	02050863          	beqz	a0,80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001c24:	00048513          	mv	a0,s1
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	a10080e7          	jalr	-1520(ra) # 80001638 <_Z16putPartialToFullP12kmem_cache_s>
        }
        return allocatedAddr;
    80001c30:	0200006f          	j	80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	874080e7          	jalr	-1932(ra) # 800014a8 <_Z14allocateObjectP6slab_s>
    80001c3c:	00050913          	mv	s2,a0
        if(full(cachep->slabs_partial))
    80001c40:	0504b503          	ld	a0,80(s1)
    80001c44:	00000097          	auipc	ra,0x0
    80001c48:	91c080e7          	jalr	-1764(ra) # 80001560 <_Z4fullP6slab_s>
    80001c4c:	02051063          	bnez	a0,80001c6c <_Z16kmem_cache_allocP12kmem_cache_s+0xb0>
                putPartialToFull(cachep);
        }
        return allocatedAddr;
    }
    return nullptr;
}
    80001c50:	00090513          	mv	a0,s2
    80001c54:	01813083          	ld	ra,24(sp)
    80001c58:	01013403          	ld	s0,16(sp)
    80001c5c:	00813483          	ld	s1,8(sp)
    80001c60:	00013903          	ld	s2,0(sp)
    80001c64:	02010113          	addi	sp,sp,32
    80001c68:	00008067          	ret
            putPartialToFull(cachep);
    80001c6c:	00048513          	mv	a0,s1
    80001c70:	00000097          	auipc	ra,0x0
    80001c74:	9c8080e7          	jalr	-1592(ra) # 80001638 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001c78:	fd9ff06f          	j	80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        allocateSlab(cachep);
    80001c7c:	00048513          	mv	a0,s1
    80001c80:	00000097          	auipc	ra,0x0
    80001c84:	b18080e7          	jalr	-1256(ra) # 80001798 <_Z12allocateSlabP12kmem_cache_s>
        if(cachep->slabs_empty == nullptr)
    80001c88:	0404b903          	ld	s2,64(s1)
    80001c8c:	04090863          	beqz	s2,80001cdc <_Z16kmem_cache_allocP12kmem_cache_s+0x120>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001c90:	00090513          	mv	a0,s2
    80001c94:	00000097          	auipc	ra,0x0
    80001c98:	814080e7          	jalr	-2028(ra) # 800014a8 <_Z14allocateObjectP6slab_s>
    80001c9c:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001ca0:	0404b503          	ld	a0,64(s1)
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	8e4080e7          	jalr	-1820(ra) # 80001588 <_Z5emptyP6slab_s>
    80001cac:	fa0512e3          	bnez	a0,80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            putEmptyToPartial(cachep);
    80001cb0:	00048513          	mv	a0,s1
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	9dc080e7          	jalr	-1572(ra) # 80001690 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001cbc:	0504b503          	ld	a0,80(s1)
    80001cc0:	00000097          	auipc	ra,0x0
    80001cc4:	8a0080e7          	jalr	-1888(ra) # 80001560 <_Z4fullP6slab_s>
    80001cc8:	f80504e3          	beqz	a0,80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001ccc:	00048513          	mv	a0,s1
    80001cd0:	00000097          	auipc	ra,0x0
    80001cd4:	968080e7          	jalr	-1688(ra) # 80001638 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001cd8:	f79ff06f          	j	80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            cachep->errors|=EXPAND_ERROR;
    80001cdc:	0784a783          	lw	a5,120(s1)
    80001ce0:	0017e793          	ori	a5,a5,1
    80001ce4:	06f4ac23          	sw	a5,120(s1)
            return nullptr;
    80001ce8:	f69ff06f          	j	80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        return nullptr;
    80001cec:	00050913          	mv	s2,a0
    80001cf0:	f61ff06f          	j	80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>

0000000080001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>:
{
    80001cf4:	fc010113          	addi	sp,sp,-64
    80001cf8:	02113c23          	sd	ra,56(sp)
    80001cfc:	02813823          	sd	s0,48(sp)
    80001d00:	02913423          	sd	s1,40(sp)
    80001d04:	03213023          	sd	s2,32(sp)
    80001d08:	01313c23          	sd	s3,24(sp)
    80001d0c:	01413823          	sd	s4,16(sp)
    80001d10:	01513423          	sd	s5,8(sp)
    80001d14:	04010413          	addi	s0,sp,64
    80001d18:	00050993          	mv	s3,a0
    80001d1c:	00058913          	mv	s2,a1
    80001d20:	00060a13          	mv	s4,a2
    80001d24:	00068a93          	mv	s5,a3
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001d28:	0000a517          	auipc	a0,0xa
    80001d2c:	17853503          	ld	a0,376(a0) # 8000bea0 <_ZL13slabAllocator>
    80001d30:	07050513          	addi	a0,a0,112
    80001d34:	00000097          	auipc	ra,0x0
    80001d38:	e88080e7          	jalr	-376(ra) # 80001bbc <_Z16kmem_cache_allocP12kmem_cache_s>
    80001d3c:	00050493          	mv	s1,a0
    if(newCache == nullptr)
    80001d40:	02050863          	beqz	a0,80001d70 <_Z17kmem_cache_createPKcmPFvPvES3_+0x7c>
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    80001d44:	00090513          	mv	a0,s2
    80001d48:	00000097          	auipc	ra,0x0
    80001d4c:	b3c080e7          	jalr	-1220(ra) # 80001884 <_Z18getOptimalSlabSizem>
    80001d50:	00050613          	mv	a2,a0
    80001d54:	000a8793          	mv	a5,s5
    80001d58:	000a0713          	mv	a4,s4
    80001d5c:	00090693          	mv	a3,s2
    80001d60:	00098593          	mv	a1,s3
    80001d64:	00048513          	mv	a0,s1
    80001d68:	fffff097          	auipc	ra,0xfffff
    80001d6c:	5b4080e7          	jalr	1460(ra) # 8000131c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
}
    80001d70:	00048513          	mv	a0,s1
    80001d74:	03813083          	ld	ra,56(sp)
    80001d78:	03013403          	ld	s0,48(sp)
    80001d7c:	02813483          	ld	s1,40(sp)
    80001d80:	02013903          	ld	s2,32(sp)
    80001d84:	01813983          	ld	s3,24(sp)
    80001d88:	01013a03          	ld	s4,16(sp)
    80001d8c:	00813a83          	ld	s5,8(sp)
    80001d90:	04010113          	addi	sp,sp,64
    80001d94:	00008067          	ret

0000000080001d98 <_Z15kmem_cache_freeP12kmem_cache_sPv>:

void kmem_cache_free(kmem_cache_t *cachep, void *objp)
{
    if(cachep == nullptr || objp == nullptr)
    80001d98:	04050663          	beqz	a0,80001de4 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x4c>
{
    80001d9c:	fe010113          	addi	sp,sp,-32
    80001da0:	00113c23          	sd	ra,24(sp)
    80001da4:	00813823          	sd	s0,16(sp)
    80001da8:	00913423          	sd	s1,8(sp)
    80001dac:	02010413          	addi	s0,sp,32
    80001db0:	00058493          	mv	s1,a1
    if(cachep == nullptr || objp == nullptr)
    80001db4:	00058e63          	beqz	a1,80001dd0 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>
        return;
    slab_t* slab = findSlab(cachep, objp);
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	b34080e7          	jalr	-1228(ra) # 800018ec <_Z8findSlabP12kmem_cache_sPKv>
    if(slab == nullptr) return;
    80001dc0:	00050863          	beqz	a0,80001dd0 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>

    free_slab_object(slab, objp);
    80001dc4:	00048593          	mv	a1,s1
    80001dc8:	00000097          	auipc	ra,0x0
    80001dcc:	c84080e7          	jalr	-892(ra) # 80001a4c <_Z16free_slab_objectP6slab_sPKv>
}
    80001dd0:	01813083          	ld	ra,24(sp)
    80001dd4:	01013403          	ld	s0,16(sp)
    80001dd8:	00813483          	ld	s1,8(sp)
    80001ddc:	02010113          	addi	sp,sp,32
    80001de0:	00008067          	ret
    80001de4:	00008067          	ret

0000000080001de8 <_Z15kmem_cache_infoP12kmem_cache_s>:

//TODO what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    80001de8:	14050c63          	beqz	a0,80001f40 <_Z15kmem_cache_infoP12kmem_cache_s+0x158>
{
    80001dec:	fe010113          	addi	sp,sp,-32
    80001df0:	00113c23          	sd	ra,24(sp)
    80001df4:	00813823          	sd	s0,16(sp)
    80001df8:	00913423          	sd	s1,8(sp)
    80001dfc:	01213023          	sd	s2,0(sp)
    80001e00:	02010413          	addi	s0,sp,32
    80001e04:	00050913          	mv	s2,a0
        return;
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n");
    80001e08:	00007517          	auipc	a0,0x7
    80001e0c:	28850513          	addi	a0,a0,648 # 80009090 <CONSOLE_STATUS+0x80>
    80001e10:	00002097          	auipc	ra,0x2
    80001e14:	978080e7          	jalr	-1672(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Kmem Cache Info-------------------------------------\n");
    80001e18:	00007517          	auipc	a0,0x7
    80001e1c:	28850513          	addi	a0,a0,648 # 800090a0 <CONSOLE_STATUS+0x90>
    80001e20:	00002097          	auipc	ra,0x2
    80001e24:	968080e7          	jalr	-1688(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache Name ");
    80001e28:	00007517          	auipc	a0,0x7
    80001e2c:	2b050513          	addi	a0,a0,688 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001e30:	00002097          	auipc	ra,0x2
    80001e34:	958080e7          	jalr	-1704(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString(cachep->cacheName); KConsole::trapPrintString("\n");
    80001e38:	00090513          	mv	a0,s2
    80001e3c:	00002097          	auipc	ra,0x2
    80001e40:	94c080e7          	jalr	-1716(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    80001e44:	00007517          	auipc	a0,0x7
    80001e48:	33c50513          	addi	a0,a0,828 # 80009180 <CONSOLE_STATUS+0x170>
    80001e4c:	00002097          	auipc	ra,0x2
    80001e50:	93c080e7          	jalr	-1732(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Cache slab size in blocks ", cachep->slab_size);
    80001e54:	00a00613          	li	a2,10
    80001e58:	05893583          	ld	a1,88(s2)
    80001e5c:	00007517          	auipc	a0,0x7
    80001e60:	28c50513          	addi	a0,a0,652 # 800090e8 <CONSOLE_STATUS+0xd8>
    80001e64:	00002097          	auipc	ra,0x2
    80001e68:	9fc080e7          	jalr	-1540(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Cache obj size in bytes ", cachep->obj_size);
    80001e6c:	00a00613          	li	a2,10
    80001e70:	06093583          	ld	a1,96(s2)
    80001e74:	00007517          	auipc	a0,0x7
    80001e78:	29450513          	addi	a0,a0,660 # 80009108 <CONSOLE_STATUS+0xf8>
    80001e7c:	00002097          	auipc	ra,0x2
    80001e80:	9e4080e7          	jalr	-1564(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    
    KConsole::trapPrintString("Slabs info-------------------\n");
    80001e84:	00007517          	auipc	a0,0x7
    80001e88:	2a450513          	addi	a0,a0,676 # 80009128 <CONSOLE_STATUS+0x118>
    80001e8c:	00002097          	auipc	ra,0x2
    80001e90:	8fc080e7          	jalr	-1796(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>

    KConsole::trapPrintString("Full slabs\n");
    80001e94:	00007517          	auipc	a0,0x7
    80001e98:	2b450513          	addi	a0,a0,692 # 80009148 <CONSOLE_STATUS+0x138>
    80001e9c:	00002097          	auipc	ra,0x2
    80001ea0:	8ec080e7          	jalr	-1812(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    slab_t* slab = cachep->slabs_full;
    80001ea4:	04893483          	ld	s1,72(s2)
    while(slab != nullptr)
    80001ea8:	00048c63          	beqz	s1,80001ec0 <_Z15kmem_cache_infoP12kmem_cache_s+0xd8>
    {
        printSlabInfo(slab);
    80001eac:	00048513          	mv	a0,s1
    80001eb0:	00000097          	auipc	ra,0x0
    80001eb4:	b18080e7          	jalr	-1256(ra) # 800019c8 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001eb8:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001ebc:	fedff06f          	j	80001ea8 <_Z15kmem_cache_infoP12kmem_cache_s+0xc0>
    }

    KConsole::trapPrintString("Partial slabs\n");
    80001ec0:	00007517          	auipc	a0,0x7
    80001ec4:	29850513          	addi	a0,a0,664 # 80009158 <CONSOLE_STATUS+0x148>
    80001ec8:	00002097          	auipc	ra,0x2
    80001ecc:	8c0080e7          	jalr	-1856(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_partial;
    80001ed0:	05093483          	ld	s1,80(s2)
    while(slab != nullptr)
    80001ed4:	00048c63          	beqz	s1,80001eec <_Z15kmem_cache_infoP12kmem_cache_s+0x104>
    {
        printSlabInfo(slab);
    80001ed8:	00048513          	mv	a0,s1
    80001edc:	00000097          	auipc	ra,0x0
    80001ee0:	aec080e7          	jalr	-1300(ra) # 800019c8 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001ee4:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001ee8:	fedff06f          	j	80001ed4 <_Z15kmem_cache_infoP12kmem_cache_s+0xec>
    }

    KConsole::trapPrintString("Empty slabs\n");
    80001eec:	00007517          	auipc	a0,0x7
    80001ef0:	27c50513          	addi	a0,a0,636 # 80009168 <CONSOLE_STATUS+0x158>
    80001ef4:	00002097          	auipc	ra,0x2
    80001ef8:	894080e7          	jalr	-1900(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_empty;
    80001efc:	04093483          	ld	s1,64(s2)
    while(slab != nullptr)
    80001f00:	00048c63          	beqz	s1,80001f18 <_Z15kmem_cache_infoP12kmem_cache_s+0x130>
    {
        printSlabInfo(slab);
    80001f04:	00048513          	mv	a0,s1
    80001f08:	00000097          	auipc	ra,0x0
    80001f0c:	ac0080e7          	jalr	-1344(ra) # 800019c8 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001f10:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f14:	fedff06f          	j	80001f00 <_Z15kmem_cache_infoP12kmem_cache_s+0x118>
    }

    KConsole::trapPrintString("\n\n\n\n\n\n\n\n");
    80001f18:	00007517          	auipc	a0,0x7
    80001f1c:	17850513          	addi	a0,a0,376 # 80009090 <CONSOLE_STATUS+0x80>
    80001f20:	00002097          	auipc	ra,0x2
    80001f24:	868080e7          	jalr	-1944(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
}
    80001f28:	01813083          	ld	ra,24(sp)
    80001f2c:	01013403          	ld	s0,16(sp)
    80001f30:	00813483          	ld	s1,8(sp)
    80001f34:	00013903          	ld	s2,0(sp)
    80001f38:	02010113          	addi	sp,sp,32
    80001f3c:	00008067          	ret
    80001f40:	00008067          	ret

0000000080001f44 <_Z22printSlabAllocatorInfov>:
{
    80001f44:	fe010113          	addi	sp,sp,-32
    80001f48:	00113c23          	sd	ra,24(sp)
    80001f4c:	00813823          	sd	s0,16(sp)
    80001f50:	00913423          	sd	s1,8(sp)
    80001f54:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    80001f58:	00007517          	auipc	a0,0x7
    80001f5c:	22050513          	addi	a0,a0,544 # 80009178 <CONSOLE_STATUS+0x168>
    80001f60:	00002097          	auipc	ra,0x2
    80001f64:	828080e7          	jalr	-2008(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Slab allocator info----------------------------------------------------------\n");
    80001f68:	00007517          	auipc	a0,0x7
    80001f6c:	22050513          	addi	a0,a0,544 # 80009188 <CONSOLE_STATUS+0x178>
    80001f70:	00002097          	auipc	ra,0x2
    80001f74:	818080e7          	jalr	-2024(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab allocator buddy address ", (size_t)slabAllocator->buddy,16);
    80001f78:	0000a497          	auipc	s1,0xa
    80001f7c:	f2848493          	addi	s1,s1,-216 # 8000bea0 <_ZL13slabAllocator>
    80001f80:	0004b783          	ld	a5,0(s1)
    80001f84:	01000613          	li	a2,16
    80001f88:	0007b583          	ld	a1,0(a5)
    80001f8c:	00007517          	auipc	a0,0x7
    80001f90:	24c50513          	addi	a0,a0,588 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80001f94:	00002097          	auipc	ra,0x2
    80001f98:	8cc080e7          	jalr	-1844(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Slab allocator address ", (size_t)slabAllocator, 16);
    80001f9c:	01000613          	li	a2,16
    80001fa0:	0004b583          	ld	a1,0(s1)
    80001fa4:	00007517          	auipc	a0,0x7
    80001fa8:	25450513          	addi	a0,a0,596 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80001fac:	00002097          	auipc	ra,0x2
    80001fb0:	8b4080e7          	jalr	-1868(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintString("Cache of caches info\n");
    80001fb4:	00007517          	auipc	a0,0x7
    80001fb8:	25c50513          	addi	a0,a0,604 # 80009210 <CONSOLE_STATUS+0x200>
    80001fbc:	00001097          	auipc	ra,0x1
    80001fc0:	7cc080e7          	jalr	1996(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    kmem_cache_info(&slabAllocator->cacheOfCaches);
    80001fc4:	0004b503          	ld	a0,0(s1)
    80001fc8:	07050513          	addi	a0,a0,112
    80001fcc:	00000097          	auipc	ra,0x0
    80001fd0:	e1c080e7          	jalr	-484(ra) # 80001de8 <_Z15kmem_cache_infoP12kmem_cache_s>
    KConsole::trapPrintString("Caches for buffers\n");
    80001fd4:	00007517          	auipc	a0,0x7
    80001fd8:	25450513          	addi	a0,a0,596 # 80009228 <CONSOLE_STATUS+0x218>
    80001fdc:	00001097          	auipc	ra,0x1
    80001fe0:	7ac080e7          	jalr	1964(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001fe4:	00000493          	li	s1,0
    80001fe8:	0100006f          	j	80001ff8 <_Z22printSlabAllocatorInfov+0xb4>
            kmem_cache_info(slabAllocator->cachesBuffers[i]);
    80001fec:	00000097          	auipc	ra,0x0
    80001ff0:	dfc080e7          	jalr	-516(ra) # 80001de8 <_Z15kmem_cache_infoP12kmem_cache_s>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001ff4:	00148493          	addi	s1,s1,1
    80001ff8:	00c00793          	li	a5,12
    80001ffc:	0297e063          	bltu	a5,s1,8000201c <_Z22printSlabAllocatorInfov+0xd8>
        if(slabAllocator->cachesBuffers[i] != nullptr)
    80002000:	00349793          	slli	a5,s1,0x3
    80002004:	0000a717          	auipc	a4,0xa
    80002008:	e9c73703          	ld	a4,-356(a4) # 8000bea0 <_ZL13slabAllocator>
    8000200c:	00f707b3          	add	a5,a4,a5
    80002010:	0087b503          	ld	a0,8(a5)
    80002014:	fc051ce3          	bnez	a0,80001fec <_Z22printSlabAllocatorInfov+0xa8>
    80002018:	fddff06f          	j	80001ff4 <_Z22printSlabAllocatorInfov+0xb0>
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    8000201c:	00007517          	auipc	a0,0x7
    80002020:	15c50513          	addi	a0,a0,348 # 80009178 <CONSOLE_STATUS+0x168>
    80002024:	00001097          	auipc	ra,0x1
    80002028:	764080e7          	jalr	1892(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
}
    8000202c:	01813083          	ld	ra,24(sp)
    80002030:	01013403          	ld	s0,16(sp)
    80002034:	00813483          	ld	s1,8(sp)
    80002038:	02010113          	addi	sp,sp,32
    8000203c:	00008067          	ret

0000000080002040 <_Z7kmallocm>:

void *kmalloc(size_t size)
{
    80002040:	fd010113          	addi	sp,sp,-48
    80002044:	02113423          	sd	ra,40(sp)
    80002048:	02813023          	sd	s0,32(sp)
    8000204c:	00913c23          	sd	s1,24(sp)
    80002050:	01213823          	sd	s2,16(sp)
    80002054:	01313423          	sd	s3,8(sp)
    80002058:	03010413          	addi	s0,sp,48
    size_t level = getDeg2Ceil(size);
    8000205c:	00001097          	auipc	ra,0x1
    80002060:	c78080e7          	jalr	-904(ra) # 80002cd4 <_Z11getDeg2Ceilm>
    if(level < CACHE_BUFFER_SMALL)
    80002064:	00400793          	li	a5,4
    80002068:	00a7fa63          	bgeu	a5,a0,8000207c <_Z7kmallocm+0x3c>
        level = CACHE_BUFFER_SMALL;
    if(level > CACHE_BUFFER_BIG)
    8000206c:	01100793          	li	a5,17
    80002070:	00a7f863          	bgeu	a5,a0,80002080 <_Z7kmallocm+0x40>
        return nullptr;
    80002074:	00000913          	li	s2,0
    80002078:	04c0006f          	j	800020c4 <_Z7kmallocm+0x84>
        level = CACHE_BUFFER_SMALL;
    8000207c:	00500513          	li	a0,5
    size = (1 << level);
    80002080:	00100693          	li	a3,1
    80002084:	00a699bb          	sllw	s3,a3,a0
    size_t index = level - CACHE_BUFFER_SMALL;
    80002088:	ffb50493          	addi	s1,a0,-5
    if(slabAllocator->cachesBuffers[index] == nullptr)
    8000208c:	0000a917          	auipc	s2,0xa
    80002090:	e1493903          	ld	s2,-492(s2) # 8000bea0 <_ZL13slabAllocator>
    80002094:	00349793          	slli	a5,s1,0x3
    80002098:	00f907b3          	add	a5,s2,a5
    8000209c:	0087b783          	ld	a5,8(a5)
    800020a0:	04078263          	beqz	a5,800020e4 <_Z7kmallocm+0xa4>
        if(slabAllocator->cachesBuffers[index] == nullptr)
            return nullptr;
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    }

    return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
    800020a4:	00349513          	slli	a0,s1,0x3
    800020a8:	0000a497          	auipc	s1,0xa
    800020ac:	df84b483          	ld	s1,-520(s1) # 8000bea0 <_ZL13slabAllocator>
    800020b0:	00a48533          	add	a0,s1,a0
    800020b4:	00853503          	ld	a0,8(a0)
    800020b8:	00000097          	auipc	ra,0x0
    800020bc:	b04080e7          	jalr	-1276(ra) # 80001bbc <_Z16kmem_cache_allocP12kmem_cache_s>
    800020c0:	00050913          	mv	s2,a0
}
    800020c4:	00090513          	mv	a0,s2
    800020c8:	02813083          	ld	ra,40(sp)
    800020cc:	02013403          	ld	s0,32(sp)
    800020d0:	01813483          	ld	s1,24(sp)
    800020d4:	01013903          	ld	s2,16(sp)
    800020d8:	00813983          	ld	s3,8(sp)
    800020dc:	03010113          	addi	sp,sp,48
    800020e0:	00008067          	ret
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    800020e4:	07090513          	addi	a0,s2,112
    800020e8:	00000097          	auipc	ra,0x0
    800020ec:	ad4080e7          	jalr	-1324(ra) # 80001bbc <_Z16kmem_cache_allocP12kmem_cache_s>
    800020f0:	00349713          	slli	a4,s1,0x3
    800020f4:	00e90933          	add	s2,s2,a4
    800020f8:	00a93423          	sd	a0,8(s2)
        if(slabAllocator->cachesBuffers[index] == nullptr)
    800020fc:	0000a797          	auipc	a5,0xa
    80002100:	da47b783          	ld	a5,-604(a5) # 8000bea0 <_ZL13slabAllocator>
    80002104:	00e787b3          	add	a5,a5,a4
    80002108:	0087b903          	ld	s2,8(a5)
    8000210c:	fa090ce3          	beqz	s2,800020c4 <_Z7kmallocm+0x84>
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    80002110:	00098513          	mv	a0,s3
    80002114:	fffff097          	auipc	ra,0xfffff
    80002118:	770080e7          	jalr	1904(ra) # 80001884 <_Z18getOptimalSlabSizem>
    8000211c:	00050613          	mv	a2,a0
    80002120:	00000793          	li	a5,0
    80002124:	00000713          	li	a4,0
    80002128:	00098693          	mv	a3,s3
    8000212c:	00007597          	auipc	a1,0x7
    80002130:	11458593          	addi	a1,a1,276 # 80009240 <CONSOLE_STATUS+0x230>
    80002134:	00090513          	mv	a0,s2
    80002138:	fffff097          	auipc	ra,0xfffff
    8000213c:	1e4080e7          	jalr	484(ra) # 8000131c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
    80002140:	f65ff06f          	j	800020a4 <_Z7kmallocm+0x64>

0000000080002144 <_Z5kfreePKv>:

void kfree(const void *objp)
{
    if(objp == nullptr)
    80002144:	08050263          	beqz	a0,800021c8 <_Z5kfreePKv+0x84>
{
    80002148:	fe010113          	addi	sp,sp,-32
    8000214c:	00113c23          	sd	ra,24(sp)
    80002150:	00813823          	sd	s0,16(sp)
    80002154:	00913423          	sd	s1,8(sp)
    80002158:	01213023          	sd	s2,0(sp)
    8000215c:	02010413          	addi	s0,sp,32
    80002160:	00050913          	mv	s2,a0
        return;
    slab_t* slab = nullptr;
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002164:	00000493          	li	s1,0
    slab_t* slab = nullptr;
    80002168:	00000513          	li	a0,0
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    8000216c:	00c00793          	li	a5,12
    80002170:	0297e863          	bltu	a5,s1,800021a0 <_Z5kfreePKv+0x5c>
    {
        slab = findSlab(slabAllocator->cachesBuffers[i], objp);
    80002174:	00349793          	slli	a5,s1,0x3
    80002178:	0000a717          	auipc	a4,0xa
    8000217c:	d2873703          	ld	a4,-728(a4) # 8000bea0 <_ZL13slabAllocator>
    80002180:	00f707b3          	add	a5,a4,a5
    80002184:	00090593          	mv	a1,s2
    80002188:	0087b503          	ld	a0,8(a5)
    8000218c:	fffff097          	auipc	ra,0xfffff
    80002190:	760080e7          	jalr	1888(ra) # 800018ec <_Z8findSlabP12kmem_cache_sPKv>
        if(slab != nullptr) break;
    80002194:	00051663          	bnez	a0,800021a0 <_Z5kfreePKv+0x5c>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002198:	00148493          	addi	s1,s1,1
    8000219c:	fd1ff06f          	j	8000216c <_Z5kfreePKv+0x28>
    }
    if(slab != nullptr)
    800021a0:	00050863          	beqz	a0,800021b0 <_Z5kfreePKv+0x6c>
    {
        free_slab_object(slab, objp);
    800021a4:	00090593          	mv	a1,s2
    800021a8:	00000097          	auipc	ra,0x0
    800021ac:	8a4080e7          	jalr	-1884(ra) # 80001a4c <_Z16free_slab_objectP6slab_sPKv>
    }
}
    800021b0:	01813083          	ld	ra,24(sp)
    800021b4:	01013403          	ld	s0,16(sp)
    800021b8:	00813483          	ld	s1,8(sp)
    800021bc:	00013903          	ld	s2,0(sp)
    800021c0:	02010113          	addi	sp,sp,32
    800021c4:	00008067          	ret
    800021c8:	00008067          	ret

00000000800021cc <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep)
{
    800021cc:	fe010113          	addi	sp,sp,-32
    800021d0:	00113c23          	sd	ra,24(sp)
    800021d4:	00813823          	sd	s0,16(sp)
    800021d8:	00913423          	sd	s1,8(sp)
    800021dc:	02010413          	addi	s0,sp,32
    800021e0:	00050493          	mv	s1,a0
    //if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr)
    //{
    //    cachep->errors|=DESTROY_ERROR;
    //    return;
    //}
    destroy_slab_list(&cachep->slabs_empty);
    800021e4:	04050513          	addi	a0,a0,64
    800021e8:	fffff097          	auipc	ra,0xfffff
    800021ec:	0a4080e7          	jalr	164(ra) # 8000128c <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_partial);
    800021f0:	05048513          	addi	a0,s1,80
    800021f4:	fffff097          	auipc	ra,0xfffff
    800021f8:	098080e7          	jalr	152(ra) # 8000128c <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_full);
    800021fc:	04848513          	addi	a0,s1,72
    80002200:	fffff097          	auipc	ra,0xfffff
    80002204:	08c080e7          	jalr	140(ra) # 8000128c <_Z17destroy_slab_listPP6slab_s>
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
    80002208:	00048593          	mv	a1,s1
    8000220c:	0000a517          	auipc	a0,0xa
    80002210:	c9453503          	ld	a0,-876(a0) # 8000bea0 <_ZL13slabAllocator>
    80002214:	07050513          	addi	a0,a0,112
    80002218:	00000097          	auipc	ra,0x0
    8000221c:	b80080e7          	jalr	-1152(ra) # 80001d98 <_Z15kmem_cache_freeP12kmem_cache_sPv>
}
    80002220:	01813083          	ld	ra,24(sp)
    80002224:	01013403          	ld	s0,16(sp)
    80002228:	00813483          	ld	s1,8(sp)
    8000222c:	02010113          	addi	sp,sp,32
    80002230:	00008067          	ret

0000000080002234 <_Z17kmem_cache_shrinkP12kmem_cache_s>:

int kmem_cache_shrink(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    80002234:	02050863          	beqz	a0,80002264 <_Z17kmem_cache_shrinkP12kmem_cache_s+0x30>
{
    80002238:	ff010113          	addi	sp,sp,-16
    8000223c:	00113423          	sd	ra,8(sp)
    80002240:	00813023          	sd	s0,0(sp)
    80002244:	01010413          	addi	s0,sp,16
        return 0;
    int totalBlocks = destroy_slab_list(&cachep->slabs_empty);
    80002248:	04050513          	addi	a0,a0,64
    8000224c:	fffff097          	auipc	ra,0xfffff
    80002250:	040080e7          	jalr	64(ra) # 8000128c <_Z17destroy_slab_listPP6slab_s>
    return totalBlocks;
}
    80002254:	00813083          	ld	ra,8(sp)
    80002258:	00013403          	ld	s0,0(sp)
    8000225c:	01010113          	addi	sp,sp,16
    80002260:	00008067          	ret
        return 0;
    80002264:	00000513          	li	a0,0
}
    80002268:	00008067          	ret

000000008000226c <_Z16kmem_cache_errorP12kmem_cache_s>:

int kmem_cache_error(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    8000226c:	06050a63          	beqz	a0,800022e0 <_Z16kmem_cache_errorP12kmem_cache_s+0x74>
{
    80002270:	fe010113          	addi	sp,sp,-32
    80002274:	00113c23          	sd	ra,24(sp)
    80002278:	00813823          	sd	s0,16(sp)
    8000227c:	00913423          	sd	s1,8(sp)
    80002280:	02010413          	addi	s0,sp,32
    80002284:	00050493          	mv	s1,a0
        return 0;

    if(cachep->errors & EXPAND_ERROR)
    80002288:	07852783          	lw	a5,120(a0)
    8000228c:	0017f793          	andi	a5,a5,1
    80002290:	02079463          	bnez	a5,800022b8 <_Z16kmem_cache_errorP12kmem_cache_s+0x4c>
        KConsole::trapPrintString("EXPAND ERROR\n");
    if(cachep->errors & DESTROY_ERROR)
    80002294:	0784a783          	lw	a5,120(s1)
    80002298:	0027f793          	andi	a5,a5,2
    8000229c:	02079863          	bnez	a5,800022cc <_Z16kmem_cache_errorP12kmem_cache_s+0x60>
        KConsole::trapPrintString("DESTROY ERROR");

    return cachep->errors;
    800022a0:	0784a503          	lw	a0,120(s1)
}
    800022a4:	01813083          	ld	ra,24(sp)
    800022a8:	01013403          	ld	s0,16(sp)
    800022ac:	00813483          	ld	s1,8(sp)
    800022b0:	02010113          	addi	sp,sp,32
    800022b4:	00008067          	ret
        KConsole::trapPrintString("EXPAND ERROR\n");
    800022b8:	00007517          	auipc	a0,0x7
    800022bc:	fa050513          	addi	a0,a0,-96 # 80009258 <CONSOLE_STATUS+0x248>
    800022c0:	00001097          	auipc	ra,0x1
    800022c4:	4c8080e7          	jalr	1224(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    800022c8:	fcdff06f          	j	80002294 <_Z16kmem_cache_errorP12kmem_cache_s+0x28>
        KConsole::trapPrintString("DESTROY ERROR");
    800022cc:	00007517          	auipc	a0,0x7
    800022d0:	f9c50513          	addi	a0,a0,-100 # 80009268 <CONSOLE_STATUS+0x258>
    800022d4:	00001097          	auipc	ra,0x1
    800022d8:	4b4080e7          	jalr	1204(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    800022dc:	fc5ff06f          	j	800022a0 <_Z16kmem_cache_errorP12kmem_cache_s+0x34>
        return 0;
    800022e0:	00000513          	li	a0,0
}
    800022e4:	00008067          	ret

00000000800022e8 <_Z9mem_allocm>:
//

#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    800022e8:	ff010113          	addi	sp,sp,-16
    800022ec:	00813423          	sd	s0,8(sp)
    800022f0:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    800022f4:	03f50513          	addi	a0,a0,63
    800022f8:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    800022fc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80002300:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    80002304:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    80002308:	00050513          	mv	a0,a0

    if(allocatedAddr == 0)
        return nullptr;

    return (void*)allocatedAddr;
}
    8000230c:	00813403          	ld	s0,8(sp)
    80002310:	01010113          	addi	sp,sp,16
    80002314:	00008067          	ret

0000000080002318 <_Z8mem_freePv>:

int mem_free(void* p)
{
    80002318:	ff010113          	addi	sp,sp,-16
    8000231c:	00813423          	sd	s0,8(sp)
    80002320:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    80002324:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    80002328:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    8000232c:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002330:	00050513          	mv	a0,a0

    return result;
}
    80002334:	0005051b          	sext.w	a0,a0
    80002338:	00813403          	ld	s0,8(sp)
    8000233c:	01010113          	addi	sp,sp,16
    80002340:	00008067          	ret

0000000080002344 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    80002344:	fd010113          	addi	sp,sp,-48
    80002348:	02113423          	sd	ra,40(sp)
    8000234c:	02813023          	sd	s0,32(sp)
    80002350:	00913c23          	sd	s1,24(sp)
    80002354:	01213823          	sd	s2,16(sp)
    80002358:	01313423          	sd	s3,8(sp)
    8000235c:	03010413          	addi	s0,sp,48
    80002360:	00050493          	mv	s1,a0
    80002364:	00058913          	mv	s2,a1
    80002368:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    8000236c:	00001537          	lui	a0,0x1
    80002370:	00000097          	auipc	ra,0x0
    80002374:	f78080e7          	jalr	-136(ra) # 800022e8 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == nullptr)
    80002378:	04050263          	beqz	a0,800023bc <_Z13thread_createPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    8000237c:	00050713          	mv	a4,a0
    //__asm__ volatile("mv a4, %0" :  : "r"((uint64)1));
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    80002380:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    80002384:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    80002388:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    8000238c:	01100793          	li	a5,17
    80002390:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    80002394:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002398:	00050513          	mv	a0,a0

    return result;
    8000239c:	0005051b          	sext.w	a0,a0
}
    800023a0:	02813083          	ld	ra,40(sp)
    800023a4:	02013403          	ld	s0,32(sp)
    800023a8:	01813483          	ld	s1,24(sp)
    800023ac:	01013903          	ld	s2,16(sp)
    800023b0:	00813983          	ld	s3,8(sp)
    800023b4:	03010113          	addi	sp,sp,48
    800023b8:	00008067          	ret
        return -1;
    800023bc:	fff00513          	li	a0,-1
    800023c0:	fe1ff06f          	j	800023a0 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>

00000000800023c4 <_Z15thread_dispatchv>:

void thread_dispatch()
{
    800023c4:	ff010113          	addi	sp,sp,-16
    800023c8:	00813423          	sd	s0,8(sp)
    800023cc:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    800023d0:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    800023d4:	00000073          	ecall
}
    800023d8:	00813403          	ld	s0,8(sp)
    800023dc:	01010113          	addi	sp,sp,16
    800023e0:	00008067          	ret

00000000800023e4 <_Z11thread_exitv>:

int thread_exit()
{
    800023e4:	ff010113          	addi	sp,sp,-16
    800023e8:	00813423          	sd	s0,8(sp)
    800023ec:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    800023f0:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    800023f4:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800023f8:	00050513          	mv	a0,a0
    return result;
}
    800023fc:	0005051b          	sext.w	a0,a0
    80002400:	00813403          	ld	s0,8(sp)
    80002404:	01010113          	addi	sp,sp,16
    80002408:	00008067          	ret

000000008000240c <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    8000240c:	ff010113          	addi	sp,sp,-16
    80002410:	00813423          	sd	s0,8(sp)
    80002414:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    80002418:	02059593          	slli	a1,a1,0x20
    8000241c:	0205d593          	srli	a1,a1,0x20
    80002420:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80002424:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80002428:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    8000242c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002430:	00050513          	mv	a0,a0
    return result;
}
    80002434:	0005051b          	sext.w	a0,a0
    80002438:	00813403          	ld	s0,8(sp)
    8000243c:	01010113          	addi	sp,sp,16
    80002440:	00008067          	ret

0000000080002444 <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    80002444:	ff010113          	addi	sp,sp,-16
    80002448:	00813423          	sd	s0,8(sp)
    8000244c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80002450:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    80002454:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    80002458:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000245c:	00050513          	mv	a0,a0
    return result;
}
    80002460:	0005051b          	sext.w	a0,a0
    80002464:	00813403          	ld	s0,8(sp)
    80002468:	01010113          	addi	sp,sp,16
    8000246c:	00008067          	ret

0000000080002470 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    80002470:	ff010113          	addi	sp,sp,-16
    80002474:	00813423          	sd	s0,8(sp)
    80002478:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    8000247c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    80002480:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    80002484:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002488:	00050513          	mv	a0,a0
    return result;
}
    8000248c:	0005051b          	sext.w	a0,a0
    80002490:	00813403          	ld	s0,8(sp)
    80002494:	01010113          	addi	sp,sp,16
    80002498:	00008067          	ret

000000008000249c <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    8000249c:	ff010113          	addi	sp,sp,-16
    800024a0:	00813423          	sd	s0,8(sp)
    800024a4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800024a8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    800024ac:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    800024b0:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800024b4:	00050513          	mv	a0,a0
    return result;
}
    800024b8:	0005051b          	sext.w	a0,a0
    800024bc:	00813403          	ld	s0,8(sp)
    800024c0:	01010113          	addi	sp,sp,16
    800024c4:	00008067          	ret

00000000800024c8 <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    800024c8:	ff010113          	addi	sp,sp,-16
    800024cc:	00813423          	sd	s0,8(sp)
    800024d0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    800024d4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    800024d8:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    800024dc:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800024e0:	00050513          	mv	a0,a0
    return result;
}
    800024e4:	0005051b          	sext.w	a0,a0
    800024e8:	00813403          	ld	s0,8(sp)
    800024ec:	01010113          	addi	sp,sp,16
    800024f0:	00008067          	ret

00000000800024f4 <_Z12thread_startPv>:

int thread_start(void* p)
{
    800024f4:	ff010113          	addi	sp,sp,-16
    800024f8:	00813423          	sd	s0,8(sp)
    800024fc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    80002500:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    80002504:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    80002508:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000250c:	00050513          	mv	a0,a0
    return result;
}
    80002510:	0005051b          	sext.w	a0,a0
    80002514:	00813403          	ld	s0,8(sp)
    80002518:	01010113          	addi	sp,sp,16
    8000251c:	00008067          	ret

0000000080002520 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    80002520:	fd010113          	addi	sp,sp,-48
    80002524:	02113423          	sd	ra,40(sp)
    80002528:	02813023          	sd	s0,32(sp)
    8000252c:	00913c23          	sd	s1,24(sp)
    80002530:	01213823          	sd	s2,16(sp)
    80002534:	01313423          	sd	s3,8(sp)
    80002538:	03010413          	addi	s0,sp,48
    8000253c:	00050493          	mv	s1,a0
    80002540:	00058913          	mv	s2,a1
    80002544:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80002548:	00001537          	lui	a0,0x1
    8000254c:	00000097          	auipc	ra,0x0
    80002550:	d9c080e7          	jalr	-612(ra) # 800022e8 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    80002554:	04050263          	beqz	a0,80002598 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    80002558:	00050713          	mv	a4,a0
    //__asm__ volatile("mv a4, %0" :  : "r"((uint64)1));
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    8000255c:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    80002560:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    80002564:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    80002568:	01400793          	li	a5,20
    8000256c:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80002570:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002574:	00050513          	mv	a0,a0
    return result;
    80002578:	0005051b          	sext.w	a0,a0
}
    8000257c:	02813083          	ld	ra,40(sp)
    80002580:	02013403          	ld	s0,32(sp)
    80002584:	01813483          	ld	s1,24(sp)
    80002588:	01013903          	ld	s2,16(sp)
    8000258c:	00813983          	ld	s3,8(sp)
    80002590:	03010113          	addi	sp,sp,48
    80002594:	00008067          	ret
        return -1;
    80002598:	fff00513          	li	a0,-1
    8000259c:	fe1ff06f          	j	8000257c <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>

00000000800025a0 <_Z4getcv>:

char getc()
{
    800025a0:	ff010113          	addi	sp,sp,-16
    800025a4:	00813423          	sd	s0,8(sp)
    800025a8:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    800025ac:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    800025b0:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800025b4:	00050513          	mv	a0,a0
    return (char)result;
}
    800025b8:	0ff57513          	andi	a0,a0,255
    800025bc:	00813403          	ld	s0,8(sp)
    800025c0:	01010113          	addi	sp,sp,16
    800025c4:	00008067          	ret

00000000800025c8 <_Z4putcc>:

void putc(char c)
{
    800025c8:	ff010113          	addi	sp,sp,-16
    800025cc:	00813423          	sd	s0,8(sp)
    800025d0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    800025d4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    800025d8:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    800025dc:	00000073          	ecall
}
    800025e0:	00813403          	ld	s0,8(sp)
    800025e4:	01010113          	addi	sp,sp,16
    800025e8:	00008067          	ret

00000000800025ec <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    800025ec:	ff010113          	addi	sp,sp,-16
    800025f0:	00813423          	sd	s0,8(sp)
    800025f4:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    800025f8:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    800025fc:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002600:	00050513          	mv	a0,a0
    return (char)result;
}
    80002604:	0ff57513          	andi	a0,a0,255
    80002608:	00813403          	ld	s0,8(sp)
    8000260c:	01010113          	addi	sp,sp,16
    80002610:	00008067          	ret

0000000080002614 <_Z17thread_delete_pcbP7_thread>:

int thread_delete_pcb(thread_t handle)
{
    80002614:	ff010113          	addi	sp,sp,-16
    80002618:	00813423          	sd	s0,8(sp)
    8000261c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80002620:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    80002624:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    80002628:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000262c:	00050513          	mv	a0,a0
    return (char)result;
}
    80002630:	0ff57513          	andi	a0,a0,255
    80002634:	00813403          	ld	s0,8(sp)
    80002638:	01010113          	addi	sp,sp,16
    8000263c:	00008067          	ret

0000000080002640 <_ZN7_threaddlEPv>:
//

#include "../h/_thread.hpp"
#include "../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    80002640:	ff010113          	addi	sp,sp,-16
    80002644:	00113423          	sd	ra,8(sp)
    80002648:	00813023          	sd	s0,0(sp)
    8000264c:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    80002650:	00000097          	auipc	ra,0x0
    80002654:	fc4080e7          	jalr	-60(ra) # 80002614 <_Z17thread_delete_pcbP7_thread>
    80002658:	00813083          	ld	ra,8(sp)
    8000265c:	00013403          	ld	s0,0(sp)
    80002660:	01010113          	addi	sp,sp,16
    80002664:	00008067          	ret

0000000080002668 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    80002668:	ff010113          	addi	sp,sp,-16
    8000266c:	00113423          	sd	ra,8(sp)
    80002670:	00813023          	sd	s0,0(sp)
    80002674:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80002678:	00002097          	auipc	ra,0x2
    8000267c:	ff8080e7          	jalr	-8(ra) # 80004670 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    80002680:	0000a797          	auipc	a5,0xa
    80002684:	8287b783          	ld	a5,-2008(a5) # 8000bea8 <_ZN3PCB7runningE>
    80002688:	0287b703          	ld	a4,40(a5)
    8000268c:	0307b503          	ld	a0,48(a5)
    80002690:	000700e7          	jalr	a4

    thread_exit();
    80002694:	00000097          	auipc	ra,0x0
    80002698:	d50080e7          	jalr	-688(ra) # 800023e4 <_Z11thread_exitv>
}
    8000269c:	00813083          	ld	ra,8(sp)
    800026a0:	00013403          	ld	s0,0(sp)
    800026a4:	01010113          	addi	sp,sp,16
    800026a8:	00008067          	ret

00000000800026ac <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800026ac:	ff010113          	addi	sp,sp,-16
    800026b0:	00813423          	sd	s0,8(sp)
    800026b4:	01010413          	addi	s0,sp,16
    })
    800026b8:	00050023          	sb	zero,0(a0) # 1000 <_entry-0x7ffff000>
    800026bc:	00e53c23          	sd	a4,24(a0)
    800026c0:	02053023          	sd	zero,32(a0)
    800026c4:	02b53423          	sd	a1,40(a0)
    800026c8:	02c53823          	sd	a2,48(a0)
    800026cc:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    800026d0:	000017b7          	lui	a5,0x1
    800026d4:	00f686b3          	add	a3,a3,a5
    })
    800026d8:	04d53423          	sd	a3,72(a0)
    800026dc:	00000797          	auipc	a5,0x0
    800026e0:	f8c78793          	addi	a5,a5,-116 # 80002668 <_ZN3PCB6runnerEv>
    800026e4:	04f53823          	sd	a5,80(a0)
    800026e8:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    800026ec:	00053423          	sd	zero,8(a0)
}
    800026f0:	00813403          	ld	s0,8(sp)
    800026f4:	01010113          	addi	sp,sp,16
    800026f8:	00008067          	ret

00000000800026fc <_ZN3PCB5startEv>:
{
    800026fc:	ff010113          	addi	sp,sp,-16
    80002700:	00113423          	sd	ra,8(sp)
    80002704:	00813023          	sd	s0,0(sp)
    80002708:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    8000270c:	00001097          	auipc	ra,0x1
    80002710:	334080e7          	jalr	820(ra) # 80003a40 <_ZN9Scheduler3putEP3PCB>
}
    80002714:	00813083          	ld	ra,8(sp)
    80002718:	00013403          	ld	s0,0(sp)
    8000271c:	01010113          	addi	sp,sp,16
    80002720:	00008067          	ret

0000000080002724 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002724:	fe010113          	addi	sp,sp,-32
    80002728:	00113c23          	sd	ra,24(sp)
    8000272c:	00813823          	sd	s0,16(sp)
    80002730:	00913423          	sd	s1,8(sp)
    80002734:	01213023          	sd	s2,0(sp)
    80002738:	02010413          	addi	s0,sp,32
    PCB* old = running;
    8000273c:	00009497          	auipc	s1,0x9
    80002740:	76c4b483          	ld	s1,1900(s1) # 8000bea8 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80002744:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    80002748:	00100793          	li	a5,1
    8000274c:	04f70a63          	beq	a4,a5,800027a0 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    80002750:	00001097          	auipc	ra,0x1
    80002754:	344080e7          	jalr	836(ra) # 80003a94 <_ZN9Scheduler3getEv>
    80002758:	00009917          	auipc	s2,0x9
    8000275c:	75090913          	addi	s2,s2,1872 # 8000bea8 <_ZN3PCB7runningE>
    80002760:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    80002764:	00100793          	li	a5,1
    80002768:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);

    Riscv::changePrivMode();
    8000276c:	00002097          	auipc	ra,0x2
    80002770:	01c080e7          	jalr	28(ra) # 80004788 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    80002774:	00093583          	ld	a1,0(s2)
    80002778:	04858593          	addi	a1,a1,72
    8000277c:	04848513          	addi	a0,s1,72
    80002780:	fffff097          	auipc	ra,0xfffff
    80002784:	ab8080e7          	jalr	-1352(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80002788:	01813083          	ld	ra,24(sp)
    8000278c:	01013403          	ld	s0,16(sp)
    80002790:	00813483          	ld	s1,8(sp)
    80002794:	00013903          	ld	s2,0(sp)
    80002798:	02010113          	addi	sp,sp,32
    8000279c:	00008067          	ret
        Scheduler::put(old);
    800027a0:	00048513          	mv	a0,s1
    800027a4:	00001097          	auipc	ra,0x1
    800027a8:	29c080e7          	jalr	668(ra) # 80003a40 <_ZN9Scheduler3putEP3PCB>
    800027ac:	fa5ff06f          	j	80002750 <_ZN3PCB8dispatchEv+0x2c>

00000000800027b0 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800027b0:	ff010113          	addi	sp,sp,-16
    800027b4:	00113423          	sd	ra,8(sp)
    800027b8:	00813023          	sd	s0,0(sp)
    800027bc:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::pcbCache);
    800027c0:	00009797          	auipc	a5,0x9
    800027c4:	6887b783          	ld	a5,1672(a5) # 8000be48 <_GLOBAL_OFFSET_TABLE_+0x90>
    800027c8:	0007b503          	ld	a0,0(a5)
    800027cc:	fffff097          	auipc	ra,0xfffff
    800027d0:	3f0080e7          	jalr	1008(ra) # 80001bbc <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    800027d4:	00813083          	ld	ra,8(sp)
    800027d8:	00013403          	ld	s0,0(sp)
    800027dc:	01010113          	addi	sp,sp,16
    800027e0:	00008067          	ret

00000000800027e4 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    800027e4:	ff010113          	addi	sp,sp,-16
    800027e8:	00113423          	sd	ra,8(sp)
    800027ec:	00813023          	sd	s0,0(sp)
    800027f0:	01010413          	addi	s0,sp,16
    800027f4:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::pcbCache, p);
    800027f8:	00009797          	auipc	a5,0x9
    800027fc:	6507b783          	ld	a5,1616(a5) # 8000be48 <_GLOBAL_OFFSET_TABLE_+0x90>
    80002800:	0007b503          	ld	a0,0(a5)
    80002804:	fffff097          	auipc	ra,0xfffff
    80002808:	594080e7          	jalr	1428(ra) # 80001d98 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    8000280c:	00813083          	ld	ra,8(sp)
    80002810:	00013403          	ld	s0,0(sp)
    80002814:	01010113          	addi	sp,sp,16
    80002818:	00008067          	ret

000000008000281c <_ZN3PCBD1Ev>:

PCB::~PCB()
    8000281c:	ff010113          	addi	sp,sp,-16
    80002820:	00113423          	sd	ra,8(sp)
    80002824:	00813023          	sd	s0,0(sp)
    80002828:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    8000282c:	03853503          	ld	a0,56(a0)
    80002830:	00002097          	auipc	ra,0x2
    80002834:	694080e7          	jalr	1684(ra) # 80004ec4 <_ZN15MemoryAllocator5kfreeEPv>
}
    80002838:	00813083          	ld	ra,8(sp)
    8000283c:	00013403          	ld	s0,0(sp)
    80002840:	01010113          	addi	sp,sp,16
    80002844:	00008067          	ret

0000000080002848 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    80002848:	fe010113          	addi	sp,sp,-32
    8000284c:	00113c23          	sd	ra,24(sp)
    80002850:	00813823          	sd	s0,16(sp)
    80002854:	00913423          	sd	s1,8(sp)
    80002858:	01213023          	sd	s2,0(sp)
    8000285c:	02010413          	addi	s0,sp,32
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    80002860:	06000513          	li	a0,96
    80002864:	00000097          	auipc	ra,0x0
    80002868:	f4c080e7          	jalr	-180(ra) # 800027b0 <_ZN3PCBnwEm>
    8000286c:	00050493          	mv	s1,a0
    80002870:	00050e63          	beqz	a0,8000288c <_ZN3PCB10initializeEv+0x44>
    80002874:	00000713          	li	a4,0
    80002878:	00000693          	li	a3,0
    8000287c:	00000613          	li	a2,0
    80002880:	00000593          	li	a1,0
    80002884:	00000097          	auipc	ra,0x0
    80002888:	e28080e7          	jalr	-472(ra) # 800026ac <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    8000288c:	00100793          	li	a5,1
    80002890:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    80002894:	00009797          	auipc	a5,0x9
    80002898:	6097ba23          	sd	s1,1556(a5) # 8000bea8 <_ZN3PCB7runningE>
    8000289c:	00100793          	li	a5,1
    800028a0:	04f4a023          	sw	a5,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
                              //kmalloc(DEFAULT_STACK_SIZE),
                              MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
    800028a4:	00001537          	lui	a0,0x1
    800028a8:	00002097          	auipc	ra,0x2
    800028ac:	5ac080e7          	jalr	1452(ra) # 80004e54 <_ZN15MemoryAllocator7kmallocEm>
    800028b0:	00050913          	mv	s2,a0
                              DEFAULT_TIME_SLICE);
    800028b4:	06000513          	li	a0,96
    800028b8:	00000097          	auipc	ra,0x0
    800028bc:	ef8080e7          	jalr	-264(ra) # 800027b0 <_ZN3PCBnwEm>
    800028c0:	00050493          	mv	s1,a0
    800028c4:	02050063          	beqz	a0,800028e4 <_ZN3PCB10initializeEv+0x9c>
    800028c8:	00200713          	li	a4,2
    800028cc:	00090693          	mv	a3,s2
    800028d0:	00000613          	li	a2,0
    800028d4:	00009597          	auipc	a1,0x9
    800028d8:	53c5b583          	ld	a1,1340(a1) # 8000be10 <_GLOBAL_OFFSET_TABLE_+0x58>
    800028dc:	00000097          	auipc	ra,0x0
    800028e0:	dd0080e7          	jalr	-560(ra) # 800026ac <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
    800028e4:	00009797          	auipc	a5,0x9
    800028e8:	5c478793          	addi	a5,a5,1476 # 8000bea8 <_ZN3PCB7runningE>
    800028ec:	0097b423          	sd	s1,8(a5)
    PCB::consolePCB->systemThread = true;
    800028f0:	00100713          	li	a4,1
    800028f4:	00e48023          	sb	a4,0(s1)
    PCB::consolePCB->start();
    800028f8:	0087b503          	ld	a0,8(a5)
    800028fc:	00000097          	auipc	ra,0x0
    80002900:	e00080e7          	jalr	-512(ra) # 800026fc <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0,
                           //kmalloc(DEFAULT_STACK_SIZE),
                           MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
    80002904:	00001537          	lui	a0,0x1
    80002908:	00002097          	auipc	ra,0x2
    8000290c:	54c080e7          	jalr	1356(ra) # 80004e54 <_ZN15MemoryAllocator7kmallocEm>
    80002910:	00050913          	mv	s2,a0
                           DEFAULT_TIME_SLICE);
    80002914:	06000513          	li	a0,96
    80002918:	00000097          	auipc	ra,0x0
    8000291c:	e98080e7          	jalr	-360(ra) # 800027b0 <_ZN3PCBnwEm>
    80002920:	00050493          	mv	s1,a0
    80002924:	02050063          	beqz	a0,80002944 <_ZN3PCB10initializeEv+0xfc>
    80002928:	00200713          	li	a4,2
    8000292c:	00090693          	mv	a3,s2
    80002930:	00000613          	li	a2,0
    80002934:	00009597          	auipc	a1,0x9
    80002938:	50c5b583          	ld	a1,1292(a1) # 8000be40 <_GLOBAL_OFFSET_TABLE_+0x88>
    8000293c:	00000097          	auipc	ra,0x0
    80002940:	d70080e7          	jalr	-656(ra) # 800026ac <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0,
    80002944:	00009797          	auipc	a5,0x9
    80002948:	5697ba23          	sd	s1,1396(a5) # 8000beb8 <_ZN3PCB7userPCBE>
    PCB::userPCB->start();
    8000294c:	00048513          	mv	a0,s1
    80002950:	00000097          	auipc	ra,0x0
    80002954:	dac080e7          	jalr	-596(ra) # 800026fc <_ZN3PCB5startEv>
}
    80002958:	01813083          	ld	ra,24(sp)
    8000295c:	01013403          	ld	s0,16(sp)
    80002960:	00813483          	ld	s1,8(sp)
    80002964:	00013903          	ld	s2,0(sp)
    80002968:	02010113          	addi	sp,sp,32
    8000296c:	00008067          	ret

0000000080002970 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    80002970:	ff010113          	addi	sp,sp,-16
    80002974:	00813423          	sd	s0,8(sp)
    80002978:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    8000297c:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    80002980:	ffd50513          	addi	a0,a0,-3
}
    80002984:	00153513          	seqz	a0,a0
    80002988:	00813403          	ld	s0,8(sp)
    8000298c:	01010113          	addi	sp,sp,16
    80002990:	00008067          	ret

0000000080002994 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    80002994:	ff010113          	addi	sp,sp,-16
    80002998:	00113423          	sd	ra,8(sp)
    8000299c:	00813023          	sd	s0,0(sp)
    800029a0:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800029a4:	00009797          	auipc	a5,0x9
    800029a8:	50478793          	addi	a5,a5,1284 # 8000bea8 <_ZN3PCB7runningE>
    800029ac:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    800029b0:	0007b783          	ld	a5,0(a5)
    800029b4:	00300713          	li	a4,3
    800029b8:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    800029bc:	00000097          	auipc	ra,0x0
    800029c0:	d68080e7          	jalr	-664(ra) # 80002724 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    800029c4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800029c8:	00002097          	auipc	ra,0x2
    800029cc:	d88080e7          	jalr	-632(ra) # 80004750 <_ZN5Riscv13w_a0_sscratchEv>
}
    800029d0:	00813083          	ld	ra,8(sp)
    800029d4:	00013403          	ld	s0,0(sp)
    800029d8:	01010113          	addi	sp,sp,16
    800029dc:	00008067          	ret

00000000800029e0 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    800029e0:	ff010113          	addi	sp,sp,-16
    800029e4:	00113423          	sd	ra,8(sp)
    800029e8:	00813023          	sd	s0,0(sp)
    800029ec:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800029f0:	00009797          	auipc	a5,0x9
    800029f4:	4c07b823          	sd	zero,1232(a5) # 8000bec0 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    800029f8:	00000097          	auipc	ra,0x0
    800029fc:	d2c080e7          	jalr	-724(ra) # 80002724 <_ZN3PCB8dispatchEv>
}
    80002a00:	00813083          	ld	ra,8(sp)
    80002a04:	00013403          	ld	s0,0(sp)
    80002a08:	01010113          	addi	sp,sp,16
    80002a0c:	00008067          	ret

0000000080002a10 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002a10:	ff010113          	addi	sp,sp,-16
    80002a14:	00113423          	sd	ra,8(sp)
    80002a18:	00813023          	sd	s0,0(sp)
    80002a1c:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002a20:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002a24:	00009717          	auipc	a4,0x9
    80002a28:	48470713          	addi	a4,a4,1156 # 8000bea8 <_ZN3PCB7runningE>
    80002a2c:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002a30:	00073703          	ld	a4,0(a4)
    80002a34:	00009697          	auipc	a3,0x9
    80002a38:	3d46b683          	ld	a3,980(a3) # 8000be08 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002a3c:	0006b683          	ld	a3,0(a3)
    80002a40:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002a44:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80002a48:	00001097          	auipc	ra,0x1
    80002a4c:	e7c080e7          	jalr	-388(ra) # 800038c4 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002a50:	00000097          	auipc	ra,0x0
    80002a54:	cd4080e7          	jalr	-812(ra) # 80002724 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002a58:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002a5c:	00002097          	auipc	ra,0x2
    80002a60:	cf4080e7          	jalr	-780(ra) # 80004750 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002a64:	00813083          	ld	ra,8(sp)
    80002a68:	00013403          	ld	s0,0(sp)
    80002a6c:	01010113          	addi	sp,sp,16
    80002a70:	00008067          	ret

0000000080002a74 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002a74:	fd010113          	addi	sp,sp,-48
    80002a78:	02113423          	sd	ra,40(sp)
    80002a7c:	02813023          	sd	s0,32(sp)
    80002a80:	00913c23          	sd	s1,24(sp)
    80002a84:	01213823          	sd	s2,16(sp)
    80002a88:	01313423          	sd	s3,8(sp)
    80002a8c:	01413023          	sd	s4,0(sp)
    80002a90:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002a94:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002a98:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002a9c:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args,
                          //stack_space,
                          (void *) PCB::savedRegA4,
                          DEFAULT_TIME_SLICE);
    80002aa0:	06000513          	li	a0,96
    80002aa4:	00000097          	auipc	ra,0x0
    80002aa8:	d0c080e7          	jalr	-756(ra) # 800027b0 <_ZN3PCBnwEm>
    80002aac:	00050493          	mv	s1,a0
    80002ab0:	02050063          	beqz	a0,80002ad0 <_ZN3PCB19threadCreateHandlerEv+0x5c>
    80002ab4:	00200713          	li	a4,2
    80002ab8:	00009697          	auipc	a3,0x9
    80002abc:	4106b683          	ld	a3,1040(a3) # 8000bec8 <_ZN3PCB10savedRegA4E>
    80002ac0:	000a0613          	mv	a2,s4
    80002ac4:	00098593          	mv	a1,s3
    80002ac8:	00000097          	auipc	ra,0x0
    80002acc:	be4080e7          	jalr	-1052(ra) # 800026ac <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002ad0:	00993023          	sd	s1,0(s2)

    if (newPCB == nullptr) {
    80002ad4:	02048e63          	beqz	s1,80002b10 <_ZN3PCB19threadCreateHandlerEv+0x9c>
        __asm__ volatile("li a0, 0x01");
    }
    else
    {
        newPCB->start();
    80002ad8:	00048513          	mv	a0,s1
    80002adc:	00000097          	auipc	ra,0x0
    80002ae0:	c20080e7          	jalr	-992(ra) # 800026fc <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002ae4:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002ae8:	00002097          	auipc	ra,0x2
    80002aec:	c68080e7          	jalr	-920(ra) # 80004750 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002af0:	02813083          	ld	ra,40(sp)
    80002af4:	02013403          	ld	s0,32(sp)
    80002af8:	01813483          	ld	s1,24(sp)
    80002afc:	01013903          	ld	s2,16(sp)
    80002b00:	00813983          	ld	s3,8(sp)
    80002b04:	00013a03          	ld	s4,0(sp)
    80002b08:	03010113          	addi	sp,sp,48
    80002b0c:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002b10:	00100513          	li	a0,1
    80002b14:	fd5ff06f          	j	80002ae8 <_ZN3PCB19threadCreateHandlerEv+0x74>

0000000080002b18 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002b18:	ff010113          	addi	sp,sp,-16
    80002b1c:	00113423          	sd	ra,8(sp)
    80002b20:	00813023          	sd	s0,0(sp)
    80002b24:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002b28:	00058513          	mv	a0,a1
    if(pcb != nullptr)
    80002b2c:	02050463          	beqz	a0,80002b54 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002b30:	00000097          	auipc	ra,0x0
    80002b34:	bcc080e7          	jalr	-1076(ra) # 800026fc <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002b38:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x01");
    }
    Riscv::w_a0_sscratch();
    80002b3c:	00002097          	auipc	ra,0x2
    80002b40:	c14080e7          	jalr	-1004(ra) # 80004750 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002b44:	00813083          	ld	ra,8(sp)
    80002b48:	00013403          	ld	s0,0(sp)
    80002b4c:	01010113          	addi	sp,sp,16
    80002b50:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002b54:	00100513          	li	a0,1
    80002b58:	fe5ff06f          	j	80002b3c <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002b5c <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002b5c:	fd010113          	addi	sp,sp,-48
    80002b60:	02113423          	sd	ra,40(sp)
    80002b64:	02813023          	sd	s0,32(sp)
    80002b68:	00913c23          	sd	s1,24(sp)
    80002b6c:	01213823          	sd	s2,16(sp)
    80002b70:	01313423          	sd	s3,8(sp)
    80002b74:	01413023          	sd	s4,0(sp)
    80002b78:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002b7c:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002b80:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002b84:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args,
                          //stack_space,
                          (void *) PCB::savedRegA4,
                          DEFAULT_TIME_SLICE);
    80002b88:	06000513          	li	a0,96
    80002b8c:	00000097          	auipc	ra,0x0
    80002b90:	c24080e7          	jalr	-988(ra) # 800027b0 <_ZN3PCBnwEm>
    80002b94:	00050493          	mv	s1,a0
    80002b98:	02050063          	beqz	a0,80002bb8 <_ZN3PCB20threadMakePCBHandlerEv+0x5c>
    80002b9c:	00200713          	li	a4,2
    80002ba0:	00009697          	auipc	a3,0x9
    80002ba4:	3286b683          	ld	a3,808(a3) # 8000bec8 <_ZN3PCB10savedRegA4E>
    80002ba8:	000a0613          	mv	a2,s4
    80002bac:	00098593          	mv	a1,s3
    80002bb0:	00000097          	auipc	ra,0x0
    80002bb4:	afc080e7          	jalr	-1284(ra) # 800026ac <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002bb8:	00993023          	sd	s1,0(s2)

    if (newPCB == nullptr)
    80002bbc:	02048863          	beqz	s1,80002bec <_ZN3PCB20threadMakePCBHandlerEv+0x90>
    {
        __asm__ volatile("li a0, 0x01");
    }
    else
        __asm__ volatile("li a0, 0");
    80002bc0:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002bc4:	00002097          	auipc	ra,0x2
    80002bc8:	b8c080e7          	jalr	-1140(ra) # 80004750 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002bcc:	02813083          	ld	ra,40(sp)
    80002bd0:	02013403          	ld	s0,32(sp)
    80002bd4:	01813483          	ld	s1,24(sp)
    80002bd8:	01013903          	ld	s2,16(sp)
    80002bdc:	00813983          	ld	s3,8(sp)
    80002be0:	00013a03          	ld	s4,0(sp)
    80002be4:	03010113          	addi	sp,sp,48
    80002be8:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002bec:	00100513          	li	a0,1
    80002bf0:	fd5ff06f          	j	80002bc4 <_ZN3PCB20threadMakePCBHandlerEv+0x68>

0000000080002bf4 <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    80002bf4:	fe010113          	addi	sp,sp,-32
    80002bf8:	00113c23          	sd	ra,24(sp)
    80002bfc:	00813823          	sd	s0,16(sp)
    80002c00:	00913423          	sd	s1,8(sp)
    80002c04:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002c08:	00058493          	mv	s1,a1
    if(pcb != nullptr)
    80002c0c:	02048e63          	beqz	s1,80002c48 <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80002c10:	00048513          	mv	a0,s1
    80002c14:	00000097          	auipc	ra,0x0
    80002c18:	c08080e7          	jalr	-1016(ra) # 8000281c <_ZN3PCBD1Ev>
    80002c1c:	00048513          	mv	a0,s1
    80002c20:	00000097          	auipc	ra,0x0
    80002c24:	bc4080e7          	jalr	-1084(ra) # 800027e4 <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    80002c28:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80002c2c:	00002097          	auipc	ra,0x2
    80002c30:	b24080e7          	jalr	-1244(ra) # 80004750 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002c34:	01813083          	ld	ra,24(sp)
    80002c38:	01013403          	ld	s0,16(sp)
    80002c3c:	00813483          	ld	s1,8(sp)
    80002c40:	02010113          	addi	sp,sp,32
    80002c44:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80002c48:	00100513          	li	a0,1
    80002c4c:	fe1ff06f          	j	80002c2c <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080002c50 <_Z12getBlockAddrm>:
    addBlocks(buddy, addr, level); //adds free blocks
    buddy->numOfFreeBlocks += (1 << level);
}

size_t getBlockAddr(size_t addr)
{
    80002c50:	ff010113          	addi	sp,sp,-16
    80002c54:	00813423          	sd	s0,8(sp)
    80002c58:	01010413          	addi	s0,sp,16
    size_t mask = ((size_t)-1) << BLOCK_SIZE_POWER_2;
    return addr & mask;
}
    80002c5c:	fffff7b7          	lui	a5,0xfffff
    80002c60:	00f57533          	and	a0,a0,a5
    80002c64:	00813403          	ld	s0,8(sp)
    80002c68:	01010113          	addi	sp,sp,16
    80002c6c:	00008067          	ret

0000000080002c70 <_Z16getNextBlockAddrm>:
size_t getNextBlockAddr(size_t addr)
{
    80002c70:	ff010113          	addi	sp,sp,-16
    80002c74:	00113423          	sd	ra,8(sp)
    80002c78:	00813023          	sd	s0,0(sp)
    80002c7c:	01010413          	addi	s0,sp,16
    size_t currBlock = getBlockAddr(addr);
    80002c80:	00000097          	auipc	ra,0x0
    80002c84:	fd0080e7          	jalr	-48(ra) # 80002c50 <_Z12getBlockAddrm>
    return currBlock + BLOCK_SIZE;
}
    80002c88:	000017b7          	lui	a5,0x1
    80002c8c:	00f50533          	add	a0,a0,a5
    80002c90:	00813083          	ld	ra,8(sp)
    80002c94:	00013403          	ld	s0,0(sp)
    80002c98:	01010113          	addi	sp,sp,16
    80002c9c:	00008067          	ret

0000000080002ca0 <_Z12getDeg2Floorm>:

size_t getDeg2Floor(size_t num)
{
    80002ca0:	ff010113          	addi	sp,sp,-16
    80002ca4:	00813423          	sd	s0,8(sp)
    80002ca8:	01010413          	addi	s0,sp,16
    size_t x = 1;
    size_t deg = 0;
    80002cac:	00000713          	li	a4,0
    size_t x = 1;
    80002cb0:	00100793          	li	a5,1
    while(x <= num)
    80002cb4:	00f56863          	bltu	a0,a5,80002cc4 <_Z12getDeg2Floorm+0x24>
    {
        deg++;
    80002cb8:	00170713          	addi	a4,a4,1
        x<<=1;
    80002cbc:	00179793          	slli	a5,a5,0x1
    while(x <= num)
    80002cc0:	ff5ff06f          	j	80002cb4 <_Z12getDeg2Floorm+0x14>
    }
    return deg - 1;
}
    80002cc4:	fff70513          	addi	a0,a4,-1
    80002cc8:	00813403          	ld	s0,8(sp)
    80002ccc:	01010113          	addi	sp,sp,16
    80002cd0:	00008067          	ret

0000000080002cd4 <_Z11getDeg2Ceilm>:

size_t getDeg2Ceil(size_t num)
{
    80002cd4:	ff010113          	addi	sp,sp,-16
    80002cd8:	00813423          	sd	s0,8(sp)
    80002cdc:	01010413          	addi	s0,sp,16
    80002ce0:	00050713          	mv	a4,a0
    size_t x = 1;
    size_t deg = 0;
    80002ce4:	00000513          	li	a0,0
    size_t x = 1;
    80002ce8:	00100793          	li	a5,1
    while(x < num)
    80002cec:	00e7f863          	bgeu	a5,a4,80002cfc <_Z11getDeg2Ceilm+0x28>
    {
        deg++;
    80002cf0:	00150513          	addi	a0,a0,1
        x<<=1;
    80002cf4:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80002cf8:	ff5ff06f          	j	80002cec <_Z11getDeg2Ceilm+0x18>
    }
    return deg;
}
    80002cfc:	00813403          	ld	s0,8(sp)
    80002d00:	01010113          	addi	sp,sp,16
    80002d04:	00008067          	ret

0000000080002d08 <_Z15addBlockToLevelP14buddyAllocatorPvm>:
    addBlockToLevel(buddy, addr, level);
}

//adds free block to level
void addBlockToLevel(buddyAllocator* buddy, void* addr, size_t level)
{
    80002d08:	ff010113          	addi	sp,sp,-16
    80002d0c:	00813423          	sd	s0,8(sp)
    80002d10:	01010413          	addi	s0,sp,16
    buddyBlock* newBlock = (buddyBlock*)addr;
    newBlock->next = nullptr;
    80002d14:	0005b023          	sd	zero,0(a1)
    if(buddy->bucket[level].first == nullptr)
    80002d18:	00260793          	addi	a5,a2,2
    80002d1c:	00479793          	slli	a5,a5,0x4
    80002d20:	00f507b3          	add	a5,a0,a5
    80002d24:	0007b783          	ld	a5,0(a5) # 1000 <_entry-0x7ffff000>
    80002d28:	02078463          	beqz	a5,80002d50 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x48>
    {
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    }
    else
    {
        buddy->bucket[level].last->next = newBlock;
    80002d2c:	00260613          	addi	a2,a2,2
    80002d30:	00461613          	slli	a2,a2,0x4
    80002d34:	00c50633          	add	a2,a0,a2
    80002d38:	00863783          	ld	a5,8(a2)
    80002d3c:	00b7b023          	sd	a1,0(a5)
        buddy->bucket[level].last = newBlock;
    80002d40:	00b63423          	sd	a1,8(a2)
    }
}
    80002d44:	00813403          	ld	s0,8(sp)
    80002d48:	01010113          	addi	sp,sp,16
    80002d4c:	00008067          	ret
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    80002d50:	00260613          	addi	a2,a2,2
    80002d54:	00461613          	slli	a2,a2,0x4
    80002d58:	00c50633          	add	a2,a0,a2
    80002d5c:	00b63423          	sd	a1,8(a2)
    80002d60:	00b63023          	sd	a1,0(a2)
    80002d64:	fe1ff06f          	j	80002d44 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x3c>

0000000080002d68 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>:

size_t getBuddyBlockAddr(buddyAllocator* buddy, void* addr, size_t level)
{
    80002d68:	ff010113          	addi	sp,sp,-16
    80002d6c:	00813423          	sd	s0,8(sp)
    80002d70:	01010413          	addi	s0,sp,16
    size_t diff = BLOCK_SIZE << level;
    80002d74:	000017b7          	lui	a5,0x1
    80002d78:	00c7963b          	sllw	a2,a5,a2
    size_t off = (size_t)addr - (size_t)buddy->startAddr;
    80002d7c:	00853783          	ld	a5,8(a0)
    80002d80:	40f587b3          	sub	a5,a1,a5
    if(diff & off)
    80002d84:	00f677b3          	and	a5,a2,a5
    80002d88:	00078a63          	beqz	a5,80002d9c <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x34>
        return (size_t)addr - diff;
    80002d8c:	40c58533          	sub	a0,a1,a2
    else
        return (size_t)addr + diff;
}
    80002d90:	00813403          	ld	s0,8(sp)
    80002d94:	01010113          	addi	sp,sp,16
    80002d98:	00008067          	ret
        return (size_t)addr + diff;
    80002d9c:	00c58533          	add	a0,a1,a2
    80002da0:	ff1ff06f          	j	80002d90 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x28>

0000000080002da4 <_Z5splitP14buddyAllocatorPvmmb>:
{
    80002da4:	fd010113          	addi	sp,sp,-48
    80002da8:	02113423          	sd	ra,40(sp)
    80002dac:	02813023          	sd	s0,32(sp)
    80002db0:	00913c23          	sd	s1,24(sp)
    80002db4:	01213823          	sd	s2,16(sp)
    80002db8:	01313423          	sd	s3,8(sp)
    80002dbc:	01413023          	sd	s4,0(sp)
    80002dc0:	03010413          	addi	s0,sp,48
    80002dc4:	00050913          	mv	s2,a0
    80002dc8:	00058a13          	mv	s4,a1
    if(!splitMore)
    80002dcc:	06070a63          	beqz	a4,80002e40 <_Z5splitP14buddyAllocatorPvmmb+0x9c>
    80002dd0:	00060993          	mv	s3,a2
        if(currLevel == finalLevel)
    80002dd4:	04c68663          	beq	a3,a2,80002e20 <_Z5splitP14buddyAllocatorPvmmb+0x7c>
        size_t buddyBlock = getBuddyBlockAddr(buddy, addr, currLevel - 1); // currLevel - 1 for next step
    80002dd8:	fff68493          	addi	s1,a3,-1
    80002ddc:	00048613          	mv	a2,s1
    80002de0:	00000097          	auipc	ra,0x0
    80002de4:	f88080e7          	jalr	-120(ra) # 80002d68 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    80002de8:	00050593          	mv	a1,a0
        split(buddy, (void*)buddyBlock, finalLevel, currLevel - 1, false); // continue splitting
    80002dec:	00000713          	li	a4,0
    80002df0:	00048693          	mv	a3,s1
    80002df4:	00098613          	mv	a2,s3
    80002df8:	00090513          	mv	a0,s2
    80002dfc:	00000097          	auipc	ra,0x0
    80002e00:	fa8080e7          	jalr	-88(ra) # 80002da4 <_Z5splitP14buddyAllocatorPvmmb>
        split(buddy, addr, finalLevel, currLevel - 1, true); // continue splitting
    80002e04:	00100713          	li	a4,1
    80002e08:	00048693          	mv	a3,s1
    80002e0c:	00098613          	mv	a2,s3
    80002e10:	000a0593          	mv	a1,s4
    80002e14:	00090513          	mv	a0,s2
    80002e18:	00000097          	auipc	ra,0x0
    80002e1c:	f8c080e7          	jalr	-116(ra) # 80002da4 <_Z5splitP14buddyAllocatorPvmmb>
}
    80002e20:	02813083          	ld	ra,40(sp)
    80002e24:	02013403          	ld	s0,32(sp)
    80002e28:	01813483          	ld	s1,24(sp)
    80002e2c:	01013903          	ld	s2,16(sp)
    80002e30:	00813983          	ld	s3,8(sp)
    80002e34:	00013a03          	ld	s4,0(sp)
    80002e38:	03010113          	addi	sp,sp,48
    80002e3c:	00008067          	ret
        addBlockToLevel(buddy, addr, currLevel);
    80002e40:	00068613          	mv	a2,a3
    80002e44:	00000097          	auipc	ra,0x0
    80002e48:	ec4080e7          	jalr	-316(ra) # 80002d08 <_Z15addBlockToLevelP14buddyAllocatorPvm>
    80002e4c:	fd5ff06f          	j	80002e20 <_Z5splitP14buddyAllocatorPvmmb+0x7c>

0000000080002e50 <_Z11buddy_allocP14buddyAllocatorm>:
{
    80002e50:	fd010113          	addi	sp,sp,-48
    80002e54:	02113423          	sd	ra,40(sp)
    80002e58:	02813023          	sd	s0,32(sp)
    80002e5c:	00913c23          	sd	s1,24(sp)
    80002e60:	01213823          	sd	s2,16(sp)
    80002e64:	01313423          	sd	s3,8(sp)
    80002e68:	03010413          	addi	s0,sp,48
    80002e6c:	00050493          	mv	s1,a0
    size_t level = getDeg2Ceil(numOfBlocks);
    80002e70:	00058513          	mv	a0,a1
    80002e74:	00000097          	auipc	ra,0x0
    80002e78:	e60080e7          	jalr	-416(ra) # 80002cd4 <_Z11getDeg2Ceilm>
    80002e7c:	00050993          	mv	s3,a0
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002e80:	00050693          	mv	a3,a0
    80002e84:	0184b783          	ld	a5,24(s1)
    80002e88:	06d7ee63          	bltu	a5,a3,80002f04 <_Z11buddy_allocP14buddyAllocatorm+0xb4>
        if(buddy->bucket[i].first != nullptr)
    80002e8c:	00268793          	addi	a5,a3,2
    80002e90:	00479793          	slli	a5,a5,0x4
    80002e94:	00f487b3          	add	a5,s1,a5
    80002e98:	0007b903          	ld	s2,0(a5) # 1000 <_entry-0x7ffff000>
    80002e9c:	00091663          	bnez	s2,80002ea8 <_Z11buddy_allocP14buddyAllocatorm+0x58>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002ea0:	00168693          	addi	a3,a3,1
    80002ea4:	fe1ff06f          	j	80002e84 <_Z11buddy_allocP14buddyAllocatorm+0x34>
            buddy->bucket[i].first = ret->next;
    80002ea8:	00093703          	ld	a4,0(s2)
    80002eac:	00268793          	addi	a5,a3,2
    80002eb0:	00479793          	slli	a5,a5,0x4
    80002eb4:	00f487b3          	add	a5,s1,a5
    80002eb8:	00e7b023          	sd	a4,0(a5)
            if(buddy->bucket[i].first == nullptr)
    80002ebc:	02070a63          	beqz	a4,80002ef0 <_Z11buddy_allocP14buddyAllocatorm+0xa0>
            split(buddy, (void*)ret, level, i, true);
    80002ec0:	00100713          	li	a4,1
    80002ec4:	00098613          	mv	a2,s3
    80002ec8:	00090593          	mv	a1,s2
    80002ecc:	00048513          	mv	a0,s1
    80002ed0:	00000097          	auipc	ra,0x0
    80002ed4:	ed4080e7          	jalr	-300(ra) # 80002da4 <_Z5splitP14buddyAllocatorPvmmb>
            buddy->numOfFreeBlocks-= (1 << level);
    80002ed8:	00100513          	li	a0,1
    80002edc:	0135153b          	sllw	a0,a0,s3
    80002ee0:	0104b983          	ld	s3,16(s1)
    80002ee4:	40a989b3          	sub	s3,s3,a0
    80002ee8:	0134b823          	sd	s3,16(s1)
            return ret;
    80002eec:	01c0006f          	j	80002f08 <_Z11buddy_allocP14buddyAllocatorm+0xb8>
                buddy->bucket[i].last = nullptr;
    80002ef0:	00268793          	addi	a5,a3,2
    80002ef4:	00479793          	slli	a5,a5,0x4
    80002ef8:	00f487b3          	add	a5,s1,a5
    80002efc:	0007b423          	sd	zero,8(a5)
    80002f00:	fc1ff06f          	j	80002ec0 <_Z11buddy_allocP14buddyAllocatorm+0x70>
    return nullptr;
    80002f04:	00000913          	li	s2,0
}
    80002f08:	00090513          	mv	a0,s2
    80002f0c:	02813083          	ld	ra,40(sp)
    80002f10:	02013403          	ld	s0,32(sp)
    80002f14:	01813483          	ld	s1,24(sp)
    80002f18:	01013903          	ld	s2,16(sp)
    80002f1c:	00813983          	ld	s3,8(sp)
    80002f20:	03010113          	addi	sp,sp,48
    80002f24:	00008067          	ret

0000000080002f28 <_Z9addBlocksP14buddyAllocatorPvm>:
{
    80002f28:	fd010113          	addi	sp,sp,-48
    80002f2c:	02113423          	sd	ra,40(sp)
    80002f30:	02813023          	sd	s0,32(sp)
    80002f34:	00913c23          	sd	s1,24(sp)
    80002f38:	01213823          	sd	s2,16(sp)
    80002f3c:	01313423          	sd	s3,8(sp)
    80002f40:	03010413          	addi	s0,sp,48
    80002f44:	00050493          	mv	s1,a0
    80002f48:	00058993          	mv	s3,a1
    80002f4c:	00060913          	mv	s2,a2
    if(level == buddy->maxLevel)
    80002f50:	01853783          	ld	a5,24(a0)
    80002f54:	02c78a63          	beq	a5,a2,80002f88 <_Z9addBlocksP14buddyAllocatorPvm+0x60>
    size_t buddyBlockAddr = getBuddyBlockAddr(buddy,addr,level);
    80002f58:	00000097          	auipc	ra,0x0
    80002f5c:	e10080e7          	jalr	-496(ra) # 80002d68 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    buddyBlock* curr = buddy->bucket[level].first;
    80002f60:	00290793          	addi	a5,s2,2
    80002f64:	00479793          	slli	a5,a5,0x4
    80002f68:	00f487b3          	add	a5,s1,a5
    80002f6c:	0007b783          	ld	a5,0(a5)
    buddyBlock* prev = nullptr;
    80002f70:	00000713          	li	a4,0
    while(curr != nullptr)
    80002f74:	0a078e63          	beqz	a5,80003030 <_Z9addBlocksP14buddyAllocatorPvm+0x108>
        if((size_t)curr == buddyBlockAddr)
    80002f78:	00a78e63          	beq	a5,a0,80002f94 <_Z9addBlocksP14buddyAllocatorPvm+0x6c>
        prev = curr;
    80002f7c:	00078713          	mv	a4,a5
        curr = curr->next;
    80002f80:	0007b783          	ld	a5,0(a5)
    while(curr != nullptr)
    80002f84:	ff1ff06f          	j	80002f74 <_Z9addBlocksP14buddyAllocatorPvm+0x4c>
        addBlockToLevel(buddy, addr, level);
    80002f88:	00000097          	auipc	ra,0x0
    80002f8c:	d80080e7          	jalr	-640(ra) # 80002d08 <_Z15addBlockToLevelP14buddyAllocatorPvm>
        return;
    80002f90:	0b40006f          	j	80003044 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
            if(prev != nullptr)
    80002f94:	04070863          	beqz	a4,80002fe4 <_Z9addBlocksP14buddyAllocatorPvm+0xbc>
                prev->next = curr->next;
    80002f98:	0007b683          	ld	a3,0(a5)
    80002f9c:	00d73023          	sd	a3,0(a4)
                if(curr == buddy->bucket[level].last)
    80002fa0:	00290693          	addi	a3,s2,2
    80002fa4:	00469693          	slli	a3,a3,0x4
    80002fa8:	00d486b3          	add	a3,s1,a3
    80002fac:	0086b683          	ld	a3,8(a3)
    80002fb0:	02f68063          	beq	a3,a5,80002fd0 <_Z9addBlocksP14buddyAllocatorPvm+0xa8>
            if((size_t)addr < buddyBlockAddr) addBlocks(buddy, addr, level + 1); //merge two chunks
    80002fb4:	06a9f263          	bgeu	s3,a0,80003018 <_Z9addBlocksP14buddyAllocatorPvm+0xf0>
    80002fb8:	00190613          	addi	a2,s2,1
    80002fbc:	00098593          	mv	a1,s3
    80002fc0:	00048513          	mv	a0,s1
    80002fc4:	00000097          	auipc	ra,0x0
    80002fc8:	f64080e7          	jalr	-156(ra) # 80002f28 <_Z9addBlocksP14buddyAllocatorPvm>
    80002fcc:	0780006f          	j	80003044 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
                    buddy->bucket[level].last = prev;
    80002fd0:	00290793          	addi	a5,s2,2
    80002fd4:	00479793          	slli	a5,a5,0x4
    80002fd8:	00f487b3          	add	a5,s1,a5
    80002fdc:	00e7b423          	sd	a4,8(a5)
    80002fe0:	fd5ff06f          	j	80002fb4 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                if(curr->next == nullptr)
    80002fe4:	0007b703          	ld	a4,0(a5)
    80002fe8:	00070c63          	beqz	a4,80003000 <_Z9addBlocksP14buddyAllocatorPvm+0xd8>
                    buddy->bucket[level].first = curr->next;
    80002fec:	00290793          	addi	a5,s2,2
    80002ff0:	00479793          	slli	a5,a5,0x4
    80002ff4:	00f487b3          	add	a5,s1,a5
    80002ff8:	00e7b023          	sd	a4,0(a5)
    80002ffc:	fb9ff06f          	j	80002fb4 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
    80003000:	00290793          	addi	a5,s2,2
    80003004:	00479793          	slli	a5,a5,0x4
    80003008:	00f487b3          	add	a5,s1,a5
    8000300c:	0007b423          	sd	zero,8(a5)
    80003010:	0007b023          	sd	zero,0(a5)
    80003014:	fa1ff06f          	j	80002fb4 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
            else addBlocks(buddy, (void*)buddyBlockAddr, level + 1); //merge two chunks
    80003018:	00190613          	addi	a2,s2,1
    8000301c:	00050593          	mv	a1,a0
    80003020:	00048513          	mv	a0,s1
    80003024:	00000097          	auipc	ra,0x0
    80003028:	f04080e7          	jalr	-252(ra) # 80002f28 <_Z9addBlocksP14buddyAllocatorPvm>
            return;
    8000302c:	0180006f          	j	80003044 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
    addBlockToLevel(buddy, addr, level);
    80003030:	00090613          	mv	a2,s2
    80003034:	00098593          	mv	a1,s3
    80003038:	00048513          	mv	a0,s1
    8000303c:	00000097          	auipc	ra,0x0
    80003040:	ccc080e7          	jalr	-820(ra) # 80002d08 <_Z15addBlockToLevelP14buddyAllocatorPvm>
}
    80003044:	02813083          	ld	ra,40(sp)
    80003048:	02013403          	ld	s0,32(sp)
    8000304c:	01813483          	ld	s1,24(sp)
    80003050:	01013903          	ld	s2,16(sp)
    80003054:	00813983          	ld	s3,8(sp)
    80003058:	03010113          	addi	sp,sp,48
    8000305c:	00008067          	ret

0000000080003060 <_Z10buddy_initPvm>:
{
    80003060:	fd010113          	addi	sp,sp,-48
    80003064:	02113423          	sd	ra,40(sp)
    80003068:	02813023          	sd	s0,32(sp)
    8000306c:	00913c23          	sd	s1,24(sp)
    80003070:	01213823          	sd	s2,16(sp)
    80003074:	01313423          	sd	s3,8(sp)
    80003078:	03010413          	addi	s0,sp,48
    8000307c:	00058993          	mv	s3,a1
    size_t blockAddr = getBlockAddr((size_t)addr); //alling the address
    80003080:	00050493          	mv	s1,a0
    80003084:	00000097          	auipc	ra,0x0
    80003088:	bcc080e7          	jalr	-1076(ra) # 80002c50 <_Z12getBlockAddrm>
    if((size_t)addr != blockAddr) // if start address not aligned
    8000308c:	00a48a63          	beq	s1,a0,800030a0 <_Z10buddy_initPvm+0x40>
        buddyAddr = getNextBlockAddr(blockAddr);
    80003090:	00000097          	auipc	ra,0x0
    80003094:	be0080e7          	jalr	-1056(ra) # 80002c70 <_Z16getNextBlockAddrm>
    80003098:	00050493          	mv	s1,a0
        numOfBlocks--; //have to discard one block
    8000309c:	fff98993          	addi	s3,s3,-1
    numOfBlocks--; // take one block for buddy metadata
    800030a0:	fff98993          	addi	s3,s3,-1
    buddyAllocator* buddy = (buddyAllocator*)buddyAddr;
    800030a4:	00048913          	mv	s2,s1
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    800030a8:	00048513          	mv	a0,s1
    800030ac:	00000097          	auipc	ra,0x0
    800030b0:	bc4080e7          	jalr	-1084(ra) # 80002c70 <_Z16getNextBlockAddrm>
    800030b4:	00a4b423          	sd	a0,8(s1)
    buddy->numOfBlocks = numOfBlocks;
    800030b8:	0134b023          	sd	s3,0(s1)
    buddy->numOfFreeBlocks = numOfBlocks;
    800030bc:	0134b823          	sd	s3,16(s1)
    buddy->maxLevel = getDeg2Floor(numOfBlocks);
    800030c0:	00098513          	mv	a0,s3
    800030c4:	00000097          	auipc	ra,0x0
    800030c8:	bdc080e7          	jalr	-1060(ra) # 80002ca0 <_Z12getDeg2Floorm>
    800030cc:	00a4bc23          	sd	a0,24(s1)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    800030d0:	00000713          	li	a4,0
    800030d4:	02e56063          	bltu	a0,a4,800030f4 <_Z10buddy_initPvm+0x94>
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;
    800030d8:	00270793          	addi	a5,a4,2
    800030dc:	00479793          	slli	a5,a5,0x4
    800030e0:	00f907b3          	add	a5,s2,a5
    800030e4:	0007b423          	sd	zero,8(a5)
    800030e8:	0007b023          	sd	zero,0(a5)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    800030ec:	00170713          	addi	a4,a4,1
    800030f0:	fe5ff06f          	j	800030d4 <_Z10buddy_initPvm+0x74>
    for(size_t i = 0;i < numOfBlocks;i++)
    800030f4:	00000493          	li	s1,0
    800030f8:	0334f463          	bgeu	s1,s3,80003120 <_Z10buddy_initPvm+0xc0>
        addBlocks(buddy, (block*)buddy->startAddr + i, 0);
    800030fc:	00893583          	ld	a1,8(s2)
    80003100:	00c49793          	slli	a5,s1,0xc
    80003104:	00000613          	li	a2,0
    80003108:	00f585b3          	add	a1,a1,a5
    8000310c:	00090513          	mv	a0,s2
    80003110:	00000097          	auipc	ra,0x0
    80003114:	e18080e7          	jalr	-488(ra) # 80002f28 <_Z9addBlocksP14buddyAllocatorPvm>
    for(size_t i = 0;i < numOfBlocks;i++)
    80003118:	00148493          	addi	s1,s1,1
    8000311c:	fddff06f          	j	800030f8 <_Z10buddy_initPvm+0x98>
}
    80003120:	00090513          	mv	a0,s2
    80003124:	02813083          	ld	ra,40(sp)
    80003128:	02013403          	ld	s0,32(sp)
    8000312c:	01813483          	ld	s1,24(sp)
    80003130:	01013903          	ld	s2,16(sp)
    80003134:	00813983          	ld	s3,8(sp)
    80003138:	03010113          	addi	sp,sp,48
    8000313c:	00008067          	ret

0000000080003140 <_Z10buddy_freeP14buddyAllocatorPvm>:
{
    80003140:	fd010113          	addi	sp,sp,-48
    80003144:	02113423          	sd	ra,40(sp)
    80003148:	02813023          	sd	s0,32(sp)
    8000314c:	00913c23          	sd	s1,24(sp)
    80003150:	01213823          	sd	s2,16(sp)
    80003154:	01313423          	sd	s3,8(sp)
    80003158:	03010413          	addi	s0,sp,48
    8000315c:	00050493          	mv	s1,a0
    80003160:	00058993          	mv	s3,a1
    size_t level = getDeg2Ceil(numOfBlocks);
    80003164:	00060513          	mv	a0,a2
    80003168:	00000097          	auipc	ra,0x0
    8000316c:	b6c080e7          	jalr	-1172(ra) # 80002cd4 <_Z11getDeg2Ceilm>
    80003170:	00050913          	mv	s2,a0
    addBlocks(buddy, addr, level); //adds free blocks
    80003174:	00050613          	mv	a2,a0
    80003178:	00098593          	mv	a1,s3
    8000317c:	00048513          	mv	a0,s1
    80003180:	00000097          	auipc	ra,0x0
    80003184:	da8080e7          	jalr	-600(ra) # 80002f28 <_Z9addBlocksP14buddyAllocatorPvm>
    buddy->numOfFreeBlocks += (1 << level);
    80003188:	00100513          	li	a0,1
    8000318c:	0125153b          	sllw	a0,a0,s2
    80003190:	0104b903          	ld	s2,16(s1)
    80003194:	00a90933          	add	s2,s2,a0
    80003198:	0124b823          	sd	s2,16(s1)
}
    8000319c:	02813083          	ld	ra,40(sp)
    800031a0:	02013403          	ld	s0,32(sp)
    800031a4:	01813483          	ld	s1,24(sp)
    800031a8:	01013903          	ld	s2,16(sp)
    800031ac:	00813983          	ld	s3,8(sp)
    800031b0:	03010113          	addi	sp,sp,48
    800031b4:	00008067          	ret

00000000800031b8 <_Z14printBuddyInfoP14buddyAllocator>:

void printBuddyInfo(buddyAllocator* buddy)
{
    800031b8:	fd010113          	addi	sp,sp,-48
    800031bc:	02113423          	sd	ra,40(sp)
    800031c0:	02813023          	sd	s0,32(sp)
    800031c4:	00913c23          	sd	s1,24(sp)
    800031c8:	01213823          	sd	s2,16(sp)
    800031cc:	01313423          	sd	s3,8(sp)
    800031d0:	03010413          	addi	s0,sp,48
    800031d4:	00050993          	mv	s3,a0
    KConsole::trapPrintString("Buddy info-------------------------------------------\n");
    800031d8:	00006517          	auipc	a0,0x6
    800031dc:	0a050513          	addi	a0,a0,160 # 80009278 <CONSOLE_STATUS+0x268>
    800031e0:	00000097          	auipc	ra,0x0
    800031e4:	5a8080e7          	jalr	1448(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Buddy starting address ", (size_t)buddy->startAddr, 16);
    800031e8:	01000613          	li	a2,16
    800031ec:	0089b583          	ld	a1,8(s3)
    800031f0:	00006517          	auipc	a0,0x6
    800031f4:	0c050513          	addi	a0,a0,192 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800031f8:	00000097          	auipc	ra,0x0
    800031fc:	668080e7          	jalr	1640(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of blocks ", buddy->numOfBlocks);
    80003200:	00a00613          	li	a2,10
    80003204:	0009b583          	ld	a1,0(s3)
    80003208:	00006517          	auipc	a0,0x6
    8000320c:	0c050513          	addi	a0,a0,192 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003210:	00000097          	auipc	ra,0x0
    80003214:	650080e7          	jalr	1616(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of free blocks ", buddy->numOfFreeBlocks);
    80003218:	00a00613          	li	a2,10
    8000321c:	0109b583          	ld	a1,16(s3)
    80003220:	00006517          	auipc	a0,0x6
    80003224:	0c050513          	addi	a0,a0,192 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003228:	00000097          	auipc	ra,0x0
    8000322c:	638080e7          	jalr	1592(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    for(int i = buddy->maxLevel;i>=0;i--)
    80003230:	0189a903          	lw	s2,24(s3)
    80003234:	0080006f          	j	8000323c <_Z14printBuddyInfoP14buddyAllocator+0x84>
    80003238:	fff9091b          	addiw	s2,s2,-1
    8000323c:	06094663          	bltz	s2,800032a8 <_Z14printBuddyInfoP14buddyAllocator+0xf0>
    {
        KConsole::trapPrintStringInt("Level ",i);
    80003240:	00a00613          	li	a2,10
    80003244:	00090593          	mv	a1,s2
    80003248:	00006517          	auipc	a0,0x6
    8000324c:	0b850513          	addi	a0,a0,184 # 80009300 <CONSOLE_STATUS+0x2f0>
    80003250:	00000097          	auipc	ra,0x0
    80003254:	610080e7          	jalr	1552(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
        KConsole::trapPrintString("Free blocks on this level\n");
    80003258:	00006517          	auipc	a0,0x6
    8000325c:	0b050513          	addi	a0,a0,176 # 80009308 <CONSOLE_STATUS+0x2f8>
    80003260:	00000097          	auipc	ra,0x0
    80003264:	528080e7          	jalr	1320(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
        buddyBlock* curr = buddy->bucket[i].first;
    80003268:	00290793          	addi	a5,s2,2
    8000326c:	00479793          	slli	a5,a5,0x4
    80003270:	00f987b3          	add	a5,s3,a5
    80003274:	0007b483          	ld	s1,0(a5)
        while(curr != 0)
    80003278:	fc0480e3          	beqz	s1,80003238 <_Z14printBuddyInfoP14buddyAllocator+0x80>
        {
            KConsole::trapPrintInt((size_t)curr, 16);
    8000327c:	00000613          	li	a2,0
    80003280:	01000593          	li	a1,16
    80003284:	00048513          	mv	a0,s1
    80003288:	00000097          	auipc	ra,0x0
    8000328c:	544080e7          	jalr	1348(ra) # 800037cc <_ZN8KConsole12trapPrintIntEmii>
            KConsole::trapPrintString("\n");
    80003290:	00006517          	auipc	a0,0x6
    80003294:	ef050513          	addi	a0,a0,-272 # 80009180 <CONSOLE_STATUS+0x170>
    80003298:	00000097          	auipc	ra,0x0
    8000329c:	4f0080e7          	jalr	1264(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
            curr = curr->next;
    800032a0:	0004b483          	ld	s1,0(s1)
        while(curr != 0)
    800032a4:	fd5ff06f          	j	80003278 <_Z14printBuddyInfoP14buddyAllocator+0xc0>
        }
    }
    KConsole::trapPrintString("End of buddy info-------------------------------------------\n");
    800032a8:	00006517          	auipc	a0,0x6
    800032ac:	08050513          	addi	a0,a0,128 # 80009328 <CONSOLE_STATUS+0x318>
    800032b0:	00000097          	auipc	ra,0x0
    800032b4:	4d8080e7          	jalr	1240(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    800032b8:	02813083          	ld	ra,40(sp)
    800032bc:	02013403          	ld	s0,32(sp)
    800032c0:	01813483          	ld	s1,24(sp)
    800032c4:	01013903          	ld	s2,16(sp)
    800032c8:	00813983          	ld	s3,8(sp)
    800032cc:	03010113          	addi	sp,sp,48
    800032d0:	00008067          	ret

00000000800032d4 <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    800032d4:	fe010113          	addi	sp,sp,-32
    800032d8:	00113c23          	sd	ra,24(sp)
    800032dc:	00813823          	sd	s0,16(sp)
    800032e0:	00913423          	sd	s1,8(sp)
    800032e4:	01213023          	sd	s2,0(sp)
    800032e8:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    800032ec:	01800513          	li	a0,24
    800032f0:	00002097          	auipc	ra,0x2
    800032f4:	3b0080e7          	jalr	944(ra) # 800056a0 <_ZN10KSemaphorenwEm>
    800032f8:	00050493          	mv	s1,a0
    800032fc:	00050863          	beqz	a0,8000330c <_ZN8KConsole10initializeEv+0x38>
    80003300:	00000593          	li	a1,0
    80003304:	00002097          	auipc	ra,0x2
    80003308:	138080e7          	jalr	312(ra) # 8000543c <_ZN10KSemaphoreC1Ei>
    8000330c:	00009797          	auipc	a5,0x9
    80003310:	bc97b223          	sd	s1,-1084(a5) # 8000bed0 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80003314:	01800513          	li	a0,24
    80003318:	00002097          	auipc	ra,0x2
    8000331c:	388080e7          	jalr	904(ra) # 800056a0 <_ZN10KSemaphorenwEm>
    80003320:	00050493          	mv	s1,a0
    80003324:	00050863          	beqz	a0,80003334 <_ZN8KConsole10initializeEv+0x60>
    80003328:	00000593          	li	a1,0
    8000332c:	00002097          	auipc	ra,0x2
    80003330:	110080e7          	jalr	272(ra) # 8000543c <_ZN10KSemaphoreC1Ei>
    80003334:	00009797          	auipc	a5,0x9
    80003338:	ba97b223          	sd	s1,-1116(a5) # 8000bed8 <_ZN8KConsole19hasCharactersOutputE>
}
    8000333c:	01813083          	ld	ra,24(sp)
    80003340:	01013403          	ld	s0,16(sp)
    80003344:	00813483          	ld	s1,8(sp)
    80003348:	00013903          	ld	s2,0(sp)
    8000334c:	02010113          	addi	sp,sp,32
    80003350:	00008067          	ret
    80003354:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80003358:	00048513          	mv	a0,s1
    8000335c:	00002097          	auipc	ra,0x2
    80003360:	3f4080e7          	jalr	1012(ra) # 80005750 <_ZN10KSemaphoredlEPv>
    80003364:	00090513          	mv	a0,s2
    80003368:	00012097          	auipc	ra,0x12
    8000336c:	cd0080e7          	jalr	-816(ra) # 80015038 <_Unwind_Resume>
    80003370:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80003374:	00048513          	mv	a0,s1
    80003378:	00002097          	auipc	ra,0x2
    8000337c:	3d8080e7          	jalr	984(ra) # 80005750 <_ZN10KSemaphoredlEPv>
    80003380:	00090513          	mv	a0,s2
    80003384:	00012097          	auipc	ra,0x12
    80003388:	cb4080e7          	jalr	-844(ra) # 80015038 <_Unwind_Resume>

000000008000338c <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    8000338c:	00009697          	auipc	a3,0x9
    80003390:	b4468693          	addi	a3,a3,-1212 # 8000bed0 <_ZN8KConsole18hasCharactersInputE>
    80003394:	0106b603          	ld	a2,16(a3)
    80003398:	00160793          	addi	a5,a2,1
    8000339c:	00004737          	lui	a4,0x4
    800033a0:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    800033a4:	00e7f7b3          	and	a5,a5,a4
    800033a8:	0186b703          	ld	a4,24(a3)
    800033ac:	04e78263          	beq	a5,a4,800033f0 <_ZN8KConsole17putCharacterInputEc+0x64>
{
    800033b0:	ff010113          	addi	sp,sp,-16
    800033b4:	00113423          	sd	ra,8(sp)
    800033b8:	00813023          	sd	s0,0(sp)
    800033bc:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    800033c0:	0000d717          	auipc	a4,0xd
    800033c4:	b5070713          	addi	a4,a4,-1200 # 8000ff10 <_ZN8KConsole11inputBufferE>
    800033c8:	00c70633          	add	a2,a4,a2
    800033cc:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    800033d0:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    800033d4:	0006b503          	ld	a0,0(a3)
    800033d8:	00002097          	auipc	ra,0x2
    800033dc:	280080e7          	jalr	640(ra) # 80005658 <_ZN10KSemaphore6signalEv>
}
    800033e0:	00813083          	ld	ra,8(sp)
    800033e4:	00013403          	ld	s0,0(sp)
    800033e8:	01010113          	addi	sp,sp,16
    800033ec:	00008067          	ret
    800033f0:	00008067          	ret

00000000800033f4 <_ZN8KConsole24getCharactersFromConsoleEv>:
    uint64 operation = *(uint8*)CONSOLE_STATUS;
    800033f4:	00009797          	auipc	a5,0x9
    800033f8:	9d47b783          	ld	a5,-1580(a5) # 8000bdc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800033fc:	0007b783          	ld	a5,0(a5)
    80003400:	0007c783          	lbu	a5,0(a5)
    if(operation & KConsole::STATUS_READ_MASK)
    80003404:	0017f793          	andi	a5,a5,1
    80003408:	02078063          	beqz	a5,80003428 <_ZN8KConsole24getCharactersFromConsoleEv+0x34>
        char c = *(uint8*)CONSOLE_TX_DATA;
    8000340c:	00009797          	auipc	a5,0x9
    80003410:	9e47b783          	ld	a5,-1564(a5) # 8000bdf0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003414:	0007b783          	ld	a5,0(a5)
    80003418:	0007c503          	lbu	a0,0(a5)
        if(KConsole::pendingGetc > 0)
    8000341c:	00009797          	auipc	a5,0x9
    80003420:	ad47b783          	ld	a5,-1324(a5) # 8000bef0 <_ZN8KConsole11pendingGetcE>
    80003424:	00079463          	bnez	a5,8000342c <_ZN8KConsole24getCharactersFromConsoleEv+0x38>
    80003428:	00008067          	ret
{
    8000342c:	ff010113          	addi	sp,sp,-16
    80003430:	00113423          	sd	ra,8(sp)
    80003434:	00813023          	sd	s0,0(sp)
    80003438:	01010413          	addi	s0,sp,16
            KConsole::pendingGetc--;
    8000343c:	fff78793          	addi	a5,a5,-1
    80003440:	00009717          	auipc	a4,0x9
    80003444:	aaf73823          	sd	a5,-1360(a4) # 8000bef0 <_ZN8KConsole11pendingGetcE>
            KConsole::putCharacterInput(c);
    80003448:	00000097          	auipc	ra,0x0
    8000344c:	f44080e7          	jalr	-188(ra) # 8000338c <_ZN8KConsole17putCharacterInputEc>
}
    80003450:	00813083          	ld	ra,8(sp)
    80003454:	00013403          	ld	s0,0(sp)
    80003458:	01010113          	addi	sp,sp,16
    8000345c:	00008067          	ret

0000000080003460 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80003460:	fe010113          	addi	sp,sp,-32
    80003464:	00113c23          	sd	ra,24(sp)
    80003468:	00813823          	sd	s0,16(sp)
    8000346c:	00913423          	sd	s1,8(sp)
    80003470:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80003474:	00009497          	auipc	s1,0x9
    80003478:	a5c48493          	addi	s1,s1,-1444 # 8000bed0 <_ZN8KConsole18hasCharactersInputE>
    8000347c:	0004b503          	ld	a0,0(s1)
    80003480:	00002097          	auipc	ra,0x2
    80003484:	060080e7          	jalr	96(ra) # 800054e0 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80003488:	0184b783          	ld	a5,24(s1)
    8000348c:	0104b703          	ld	a4,16(s1)
    80003490:	04e78063          	beq	a5,a4,800034d0 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    80003494:	0000d717          	auipc	a4,0xd
    80003498:	a7c70713          	addi	a4,a4,-1412 # 8000ff10 <_ZN8KConsole11inputBufferE>
    8000349c:	00f70733          	add	a4,a4,a5
    800034a0:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    800034a4:	00178793          	addi	a5,a5,1
    800034a8:	00004737          	lui	a4,0x4
    800034ac:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    800034b0:	00e7f7b3          	and	a5,a5,a4
    800034b4:	00009717          	auipc	a4,0x9
    800034b8:	a2f73a23          	sd	a5,-1484(a4) # 8000bee8 <_ZN8KConsole9inputHeadE>
    return c;
}
    800034bc:	01813083          	ld	ra,24(sp)
    800034c0:	01013403          	ld	s0,16(sp)
    800034c4:	00813483          	ld	s1,8(sp)
    800034c8:	02010113          	addi	sp,sp,32
    800034cc:	00008067          	ret
        return -1;
    800034d0:	0ff00513          	li	a0,255
    800034d4:	fe9ff06f          	j	800034bc <_ZN8KConsole17getCharacterInputEv+0x5c>

00000000800034d8 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    800034d8:	00009697          	auipc	a3,0x9
    800034dc:	9f868693          	addi	a3,a3,-1544 # 8000bed0 <_ZN8KConsole18hasCharactersInputE>
    800034e0:	0286b603          	ld	a2,40(a3)
    800034e4:	00160793          	addi	a5,a2,1
    800034e8:	00004737          	lui	a4,0x4
    800034ec:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    800034f0:	00e7f7b3          	and	a5,a5,a4
    800034f4:	0306b703          	ld	a4,48(a3)
    800034f8:	04e78a63          	beq	a5,a4,8000354c <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    800034fc:	ff010113          	addi	sp,sp,-16
    80003500:	00113423          	sd	ra,8(sp)
    80003504:	00813023          	sd	s0,0(sp)
    80003508:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    8000350c:	00068713          	mv	a4,a3
    80003510:	0386b683          	ld	a3,56(a3)
    80003514:	00168693          	addi	a3,a3,1
    80003518:	02d73c23          	sd	a3,56(a4)
    outputBuffer[outputTail] = c;
    8000351c:	00009697          	auipc	a3,0x9
    80003520:	9f468693          	addi	a3,a3,-1548 # 8000bf10 <_ZN8KConsole12outputBufferE>
    80003524:	00c68633          	add	a2,a3,a2
    80003528:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    8000352c:	02f73423          	sd	a5,40(a4)
    hasCharactersOutput->signal();
    80003530:	00873503          	ld	a0,8(a4)
    80003534:	00002097          	auipc	ra,0x2
    80003538:	124080e7          	jalr	292(ra) # 80005658 <_ZN10KSemaphore6signalEv>
}
    8000353c:	00813083          	ld	ra,8(sp)
    80003540:	00013403          	ld	s0,0(sp)
    80003544:	01010113          	addi	sp,sp,16
    80003548:	00008067          	ret
    8000354c:	00008067          	ret

0000000080003550 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80003550:	fe010113          	addi	sp,sp,-32
    80003554:	00113c23          	sd	ra,24(sp)
    80003558:	00813823          	sd	s0,16(sp)
    8000355c:	00913423          	sd	s1,8(sp)
    80003560:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80003564:	00009497          	auipc	s1,0x9
    80003568:	96c48493          	addi	s1,s1,-1684 # 8000bed0 <_ZN8KConsole18hasCharactersInputE>
    8000356c:	0084b503          	ld	a0,8(s1)
    80003570:	00002097          	auipc	ra,0x2
    80003574:	f70080e7          	jalr	-144(ra) # 800054e0 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80003578:	0304b783          	ld	a5,48(s1)
    8000357c:	0284b703          	ld	a4,40(s1)
    80003580:	04e78063          	beq	a5,a4,800035c0 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;
    char c = outputBuffer[outputHead];
    80003584:	00009717          	auipc	a4,0x9
    80003588:	98c70713          	addi	a4,a4,-1652 # 8000bf10 <_ZN8KConsole12outputBufferE>
    8000358c:	00f70733          	add	a4,a4,a5
    80003590:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    80003594:	00178793          	addi	a5,a5,1
    80003598:	00004737          	lui	a4,0x4
    8000359c:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    800035a0:	00e7f7b3          	and	a5,a5,a4
    800035a4:	00009717          	auipc	a4,0x9
    800035a8:	94f73e23          	sd	a5,-1700(a4) # 8000bf00 <_ZN8KConsole10outputHeadE>
    return c;
}
    800035ac:	01813083          	ld	ra,24(sp)
    800035b0:	01013403          	ld	s0,16(sp)
    800035b4:	00813483          	ld	s1,8(sp)
    800035b8:	02010113          	addi	sp,sp,32
    800035bc:	00008067          	ret
        return -1;
    800035c0:	0ff00513          	li	a0,255
    800035c4:	fe9ff06f          	j	800035ac <_ZN8KConsole18getCharacterOutputEv+0x5c>

00000000800035c8 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    800035c8:	ff010113          	addi	sp,sp,-16
    800035cc:	00113423          	sd	ra,8(sp)
    800035d0:	00813023          	sd	s0,0(sp)
    800035d4:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    800035d8:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    800035dc:	0ff57513          	andi	a0,a0,255
    800035e0:	00000097          	auipc	ra,0x0
    800035e4:	ef8080e7          	jalr	-264(ra) # 800034d8 <_ZN8KConsole18putCharacterOutputEc>
}
    800035e8:	00813083          	ld	ra,8(sp)
    800035ec:	00013403          	ld	s0,0(sp)
    800035f0:	01010113          	addi	sp,sp,16
    800035f4:	00008067          	ret

00000000800035f8 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    800035f8:	fe010113          	addi	sp,sp,-32
    800035fc:	00113c23          	sd	ra,24(sp)
    80003600:	00813823          	sd	s0,16(sp)
    80003604:	00913423          	sd	s1,8(sp)
    80003608:	02010413          	addi	s0,sp,32
    pendingGetc++;
    8000360c:	00009717          	auipc	a4,0x9
    80003610:	8c470713          	addi	a4,a4,-1852 # 8000bed0 <_ZN8KConsole18hasCharactersInputE>
    80003614:	02073783          	ld	a5,32(a4)
    80003618:	00178793          	addi	a5,a5,1
    8000361c:	02f73023          	sd	a5,32(a4)
    char ch;
    ch = getCharacterInput();
    80003620:	00000097          	auipc	ra,0x0
    80003624:	e40080e7          	jalr	-448(ra) # 80003460 <_ZN8KConsole17getCharacterInputEv>
    80003628:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    8000362c:	01b00793          	li	a5,27
    80003630:	02f51663          	bne	a0,a5,8000365c <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    80003634:	00d00793          	li	a5,13
    80003638:	02f48863          	beq	s1,a5,80003668 <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    8000363c:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    80003640:	00001097          	auipc	ra,0x1
    80003644:	110080e7          	jalr	272(ra) # 80004750 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003648:	01813083          	ld	ra,24(sp)
    8000364c:	01013403          	ld	s0,16(sp)
    80003650:	00813483          	ld	s1,8(sp)
    80003654:	02010113          	addi	sp,sp,32
    80003658:	00008067          	ret
        putCharacterOutput(ch);
    8000365c:	00000097          	auipc	ra,0x0
    80003660:	e7c080e7          	jalr	-388(ra) # 800034d8 <_ZN8KConsole18putCharacterOutputEc>
    80003664:	fd1ff06f          	j	80003634 <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    80003668:	00d00513          	li	a0,13
    8000366c:	00000097          	auipc	ra,0x0
    80003670:	e6c080e7          	jalr	-404(ra) # 800034d8 <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    80003674:	00a00513          	li	a0,10
    80003678:	00000097          	auipc	ra,0x0
    8000367c:	e60080e7          	jalr	-416(ra) # 800034d8 <_ZN8KConsole18putCharacterOutputEc>
    80003680:	fbdff06f          	j	8000363c <_ZN8KConsole11getcHandlerEv+0x44>

0000000080003684 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    80003684:	ff010113          	addi	sp,sp,-16
    80003688:	00813423          	sd	s0,8(sp)
    8000368c:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80003690:	00009517          	auipc	a0,0x9
    80003694:	87853503          	ld	a0,-1928(a0) # 8000bf08 <_ZN8KConsole11pendingPutcE>
    80003698:	00153513          	seqz	a0,a0
    8000369c:	00813403          	ld	s0,8(sp)
    800036a0:	01010113          	addi	sp,sp,16
    800036a4:	00008067          	ret

00000000800036a8 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    800036a8:	fe010113          	addi	sp,sp,-32
    800036ac:	00113c23          	sd	ra,24(sp)
    800036b0:	00813823          	sd	s0,16(sp)
    800036b4:	02010413          	addi	s0,sp,32
    800036b8:	0180006f          	j	800036d0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit();
    800036bc:	fffff097          	auipc	ra,0xfffff
    800036c0:	d28080e7          	jalr	-728(ra) # 800023e4 <_Z11thread_exitv>
    800036c4:	0340006f          	j	800036f8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch();
    800036c8:	fffff097          	auipc	ra,0xfffff
    800036cc:	cfc080e7          	jalr	-772(ra) # 800023c4 <_Z15thread_dispatchv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    800036d0:	00008797          	auipc	a5,0x8
    800036d4:	7587b783          	ld	a5,1880(a5) # 8000be28 <_GLOBAL_OFFSET_TABLE_+0x70>
    800036d8:	0007c783          	lbu	a5,0(a5)
    800036dc:	00078e63          	beqz	a5,800036f8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800036e0:	00000097          	auipc	ra,0x0
    800036e4:	fa4080e7          	jalr	-92(ra) # 80003684 <_ZN8KConsole17outputBufferEmptyEv>
    800036e8:	00050863          	beqz	a0,800036f8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800036ec:	00009797          	auipc	a5,0x9
    800036f0:	8047b783          	ld	a5,-2044(a5) # 8000bef0 <_ZN8KConsole11pendingGetcE>
    800036f4:	fc0784e3          	beqz	a5,800036bc <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 operation = *(uint8*)CONSOLE_STATUS;
    800036f8:	00008797          	auipc	a5,0x8
    800036fc:	6d07b783          	ld	a5,1744(a5) # 8000bdc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003700:	0007b783          	ld	a5,0(a5)
    80003704:	0007c783          	lbu	a5,0(a5)
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    80003708:	0207f793          	andi	a5,a5,32
    8000370c:	fa078ee3          	beqz	a5,800036c8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    80003710:	00008797          	auipc	a5,0x8
    80003714:	7f87b783          	ld	a5,2040(a5) # 8000bf08 <_ZN8KConsole11pendingPutcE>
    80003718:	fa0788e3          	beqz	a5,800036c8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    8000371c:	fffff097          	auipc	ra,0xfffff
    80003720:	ed0080e7          	jalr	-304(ra) # 800025ec <_Z20sysCallGetCharOutputv>
    80003724:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80003728:	00008717          	auipc	a4,0x8
    8000372c:	7a870713          	addi	a4,a4,1960 # 8000bed0 <_ZN8KConsole18hasCharactersInputE>
    80003730:	03873783          	ld	a5,56(a4)
    80003734:	fff78793          	addi	a5,a5,-1
    80003738:	02f73c23          	sd	a5,56(a4)
                *(uint8*)CONSOLE_RX_DATA = c;
    8000373c:	00008797          	auipc	a5,0x8
    80003740:	6847b783          	ld	a5,1668(a5) # 8000bdc0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003744:	0007b783          	ld	a5,0(a5)
    80003748:	fef44703          	lbu	a4,-17(s0)
    8000374c:	00e78023          	sb	a4,0(a5)
    80003750:	f81ff06f          	j	800036d0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

0000000080003754 <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    80003754:	ff010113          	addi	sp,sp,-16
    80003758:	00113423          	sd	ra,8(sp)
    8000375c:	00813023          	sd	s0,0(sp)
    80003760:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    80003764:	00000097          	auipc	ra,0x0
    80003768:	dec080e7          	jalr	-532(ra) # 80003550 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    8000376c:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003770:	00001097          	auipc	ra,0x1
    80003774:	fe0080e7          	jalr	-32(ra) # 80004750 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003778:	00813083          	ld	ra,8(sp)
    8000377c:	00013403          	ld	s0,0(sp)
    80003780:	01010113          	addi	sp,sp,16
    80003784:	00008067          	ret

0000000080003788 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    80003788:	fe010113          	addi	sp,sp,-32
    8000378c:	00113c23          	sd	ra,24(sp)
    80003790:	00813823          	sd	s0,16(sp)
    80003794:	00913423          	sd	s1,8(sp)
    80003798:	02010413          	addi	s0,sp,32
    8000379c:	00050493          	mv	s1,a0
    while (*string != '\0')
    800037a0:	0004c503          	lbu	a0,0(s1)
    800037a4:	00050a63          	beqz	a0,800037b8 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    800037a8:	00000097          	auipc	ra,0x0
    800037ac:	d30080e7          	jalr	-720(ra) # 800034d8 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    800037b0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800037b4:	fedff06f          	j	800037a0 <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    800037b8:	01813083          	ld	ra,24(sp)
    800037bc:	01013403          	ld	s0,16(sp)
    800037c0:	00813483          	ld	s1,8(sp)
    800037c4:	02010113          	addi	sp,sp,32
    800037c8:	00008067          	ret

00000000800037cc <_ZN8KConsole12trapPrintIntEmii>:

void KConsole::trapPrintInt(size_t xx, int base, int sgn)
{
    800037cc:	fb010113          	addi	sp,sp,-80
    800037d0:	04113423          	sd	ra,72(sp)
    800037d4:	04813023          	sd	s0,64(sp)
    800037d8:	02913c23          	sd	s1,56(sp)
    800037dc:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    800037e0:	00006797          	auipc	a5,0x6
    800037e4:	b8878793          	addi	a5,a5,-1144 # 80009368 <CONSOLE_STATUS+0x358>
    800037e8:	0007b703          	ld	a4,0(a5)
    800037ec:	fce43423          	sd	a4,-56(s0)
    800037f0:	0087b703          	ld	a4,8(a5)
    800037f4:	fce43823          	sd	a4,-48(s0)
    800037f8:	0107c783          	lbu	a5,16(a5)
    800037fc:	fcf40c23          	sb	a5,-40(s0)
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    80003800:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80003804:	02b57733          	remu	a4,a0,a1
    80003808:	fe040693          	addi	a3,s0,-32
    8000380c:	00e68733          	add	a4,a3,a4
    80003810:	fe874703          	lbu	a4,-24(a4)
    80003814:	009687b3          	add	a5,a3,s1
    80003818:	0014849b          	addiw	s1,s1,1
    8000381c:	fce78c23          	sb	a4,-40(a5)
    }while((x /= base) != 0);
    80003820:	00050793          	mv	a5,a0
    80003824:	02b55533          	divu	a0,a0,a1
    80003828:	fcb7fee3          	bgeu	a5,a1,80003804 <_ZN8KConsole12trapPrintIntEmii+0x38>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    8000382c:	fff4849b          	addiw	s1,s1,-1
    80003830:	0004ce63          	bltz	s1,8000384c <_ZN8KConsole12trapPrintIntEmii+0x80>
        KConsole::putCharacterOutput(buf[i]);
    80003834:	fe040793          	addi	a5,s0,-32
    80003838:	009787b3          	add	a5,a5,s1
    8000383c:	fd87c503          	lbu	a0,-40(a5)
    80003840:	00000097          	auipc	ra,0x0
    80003844:	c98080e7          	jalr	-872(ra) # 800034d8 <_ZN8KConsole18putCharacterOutputEc>
    80003848:	fe5ff06f          	j	8000382c <_ZN8KConsole12trapPrintIntEmii+0x60>
}
    8000384c:	04813083          	ld	ra,72(sp)
    80003850:	04013403          	ld	s0,64(sp)
    80003854:	03813483          	ld	s1,56(sp)
    80003858:	05010113          	addi	sp,sp,80
    8000385c:	00008067          	ret

0000000080003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>:

void KConsole::trapPrintStringInt(const char *string, size_t xx, int base)
{
    80003860:	fe010113          	addi	sp,sp,-32
    80003864:	00113c23          	sd	ra,24(sp)
    80003868:	00813823          	sd	s0,16(sp)
    8000386c:	00913423          	sd	s1,8(sp)
    80003870:	01213023          	sd	s2,0(sp)
    80003874:	02010413          	addi	s0,sp,32
    80003878:	00058493          	mv	s1,a1
    8000387c:	00060913          	mv	s2,a2
    trapPrintString(string);
    80003880:	00000097          	auipc	ra,0x0
    80003884:	f08080e7          	jalr	-248(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    trapPrintInt(xx,base);
    80003888:	00000613          	li	a2,0
    8000388c:	00090593          	mv	a1,s2
    80003890:	00048513          	mv	a0,s1
    80003894:	00000097          	auipc	ra,0x0
    80003898:	f38080e7          	jalr	-200(ra) # 800037cc <_ZN8KConsole12trapPrintIntEmii>
    trapPrintString("\n");
    8000389c:	00006517          	auipc	a0,0x6
    800038a0:	8e450513          	addi	a0,a0,-1820 # 80009180 <CONSOLE_STATUS+0x170>
    800038a4:	00000097          	auipc	ra,0x0
    800038a8:	ee4080e7          	jalr	-284(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
}
    800038ac:	01813083          	ld	ra,24(sp)
    800038b0:	01013403          	ld	s0,16(sp)
    800038b4:	00813483          	ld	s1,8(sp)
    800038b8:	00013903          	ld	s2,0(sp)
    800038bc:	02010113          	addi	sp,sp,32
    800038c0:	00008067          	ret

00000000800038c4 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    800038c4:	ff010113          	addi	sp,sp,-16
    800038c8:	00813423          	sd	s0,8(sp)
    800038cc:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    800038d0:	00008797          	auipc	a5,0x8
    800038d4:	5607b783          	ld	a5,1376(a5) # 8000be30 <_GLOBAL_OFFSET_TABLE_+0x78>
    800038d8:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    800038dc:	00500793          	li	a5,5
    800038e0:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    800038e4:	00010797          	auipc	a5,0x10
    800038e8:	62c7b783          	ld	a5,1580(a5) # 80013f10 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    800038ec:	00000593          	li	a1,0
    while(curr != 0)
    800038f0:	02078063          	beqz	a5,80003910 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    800038f4:	02063683          	ld	a3,32(a2)
    800038f8:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    800038fc:	00e6e863          	bltu	a3,a4,8000390c <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80003900:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80003904:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003908:	fe9ff06f          	j	800038f0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    8000390c:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80003910:	00058a63          	beqz	a1,80003924 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    80003914:	00c5b423          	sd	a2,8(a1)
}
    80003918:	00813403          	ld	s0,8(sp)
    8000391c:	01010113          	addi	sp,sp,16
    80003920:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80003924:	00010797          	auipc	a5,0x10
    80003928:	5ec7b623          	sd	a2,1516(a5) # 80013f10 <_ZN12SleepPCBList15sleepingPCBHeadE>
    8000392c:	fedff06f          	j	80003918 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

0000000080003930 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    80003930:	00010517          	auipc	a0,0x10
    80003934:	5e053503          	ld	a0,1504(a0) # 80013f10 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80003938:	06050e63          	beqz	a0,800039b4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    8000393c:	06050c63          	beqz	a0,800039b4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80003940:	02053783          	ld	a5,32(a0)
    80003944:	00008717          	auipc	a4,0x8
    80003948:	4c473703          	ld	a4,1220(a4) # 8000be08 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000394c:	00073703          	ld	a4,0(a4)
    80003950:	06f76263          	bltu	a4,a5,800039b4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    80003954:	fe010113          	addi	sp,sp,-32
    80003958:	00113c23          	sd	ra,24(sp)
    8000395c:	00813823          	sd	s0,16(sp)
    80003960:	00913423          	sd	s1,8(sp)
    80003964:	02010413          	addi	s0,sp,32
    80003968:	0180006f          	j	80003980 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    8000396c:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003970:	00008717          	auipc	a4,0x8
    80003974:	49873703          	ld	a4,1176(a4) # 8000be08 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003978:	00073703          	ld	a4,0(a4)
    8000397c:	02f76263          	bltu	a4,a5,800039a0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    80003980:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    80003984:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    80003988:	00000097          	auipc	ra,0x0
    8000398c:	0b8080e7          	jalr	184(ra) # 80003a40 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    80003990:	00010797          	auipc	a5,0x10
    80003994:	5897b023          	sd	s1,1408(a5) # 80013f10 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    80003998:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    8000399c:	fc0498e3          	bnez	s1,8000396c <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    800039a0:	01813083          	ld	ra,24(sp)
    800039a4:	01013403          	ld	s0,16(sp)
    800039a8:	00813483          	ld	s1,8(sp)
    800039ac:	02010113          	addi	sp,sp,32
    800039b0:	00008067          	ret
    800039b4:	00008067          	ret

00000000800039b8 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    800039b8:	ff010113          	addi	sp,sp,-16
    800039bc:	00113423          	sd	ra,8(sp)
    800039c0:	00813023          	sd	s0,0(sp)
    800039c4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    800039c8:	00001097          	auipc	ra,0x1
    800039cc:	48c080e7          	jalr	1164(ra) # 80004e54 <_ZN15MemoryAllocator7kmallocEm>
}
    800039d0:	00813083          	ld	ra,8(sp)
    800039d4:	00013403          	ld	s0,0(sp)
    800039d8:	01010113          	addi	sp,sp,16
    800039dc:	00008067          	ret

00000000800039e0 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    800039e0:	ff010113          	addi	sp,sp,-16
    800039e4:	00113423          	sd	ra,8(sp)
    800039e8:	00813023          	sd	s0,0(sp)
    800039ec:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    800039f0:	00001097          	auipc	ra,0x1
    800039f4:	4d4080e7          	jalr	1236(ra) # 80004ec4 <_ZN15MemoryAllocator5kfreeEPv>
}
    800039f8:	00813083          	ld	ra,8(sp)
    800039fc:	00013403          	ld	s0,0(sp)
    80003a00:	01010113          	addi	sp,sp,16
    80003a04:	00008067          	ret

0000000080003a08 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003a08:	ff010113          	addi	sp,sp,-16
    80003a0c:	00813423          	sd	s0,8(sp)
    80003a10:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80003a14:	00010797          	auipc	a5,0x10
    80003a18:	5047b783          	ld	a5,1284(a5) # 80013f18 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003a1c:	00000513          	li	a0,0
    while(curr != 0)
    80003a20:	00078863          	beqz	a5,80003a30 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80003a24:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003a28:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003a2c:	ff5ff06f          	j	80003a20 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003a30:	0005051b          	sext.w	a0,a0
    80003a34:	00813403          	ld	s0,8(sp)
    80003a38:	01010113          	addi	sp,sp,16
    80003a3c:	00008067          	ret

0000000080003a40 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003a40:	ff010113          	addi	sp,sp,-16
    80003a44:	00813423          	sd	s0,8(sp)
    80003a48:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003a4c:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80003a50:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80003a54:	00010797          	auipc	a5,0x10
    80003a58:	4c47b783          	ld	a5,1220(a5) # 80013f18 <_ZN9Scheduler16schedulerPCBHeadE>
    80003a5c:	02078263          	beqz	a5,80003a80 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003a60:	00010797          	auipc	a5,0x10
    80003a64:	4b878793          	addi	a5,a5,1208 # 80013f18 <_ZN9Scheduler16schedulerPCBHeadE>
    80003a68:	0087b703          	ld	a4,8(a5)
    80003a6c:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003a70:	00a7b423          	sd	a0,8(a5)
    }
}
    80003a74:	00813403          	ld	s0,8(sp)
    80003a78:	01010113          	addi	sp,sp,16
    80003a7c:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003a80:	00010797          	auipc	a5,0x10
    80003a84:	49878793          	addi	a5,a5,1176 # 80013f18 <_ZN9Scheduler16schedulerPCBHeadE>
    80003a88:	00a7b423          	sd	a0,8(a5)
    80003a8c:	00a7b023          	sd	a0,0(a5)
    80003a90:	fe5ff06f          	j	80003a74 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080003a94 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80003a94:	ff010113          	addi	sp,sp,-16
    80003a98:	00813423          	sd	s0,8(sp)
    80003a9c:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80003aa0:	00010517          	auipc	a0,0x10
    80003aa4:	47853503          	ld	a0,1144(a0) # 80013f18 <_ZN9Scheduler16schedulerPCBHeadE>
    80003aa8:	00050c63          	beqz	a0,80003ac0 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003aac:	00853783          	ld	a5,8(a0)
    80003ab0:	00078e63          	beqz	a5,80003acc <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80003ab4:	00010717          	auipc	a4,0x10
    80003ab8:	46f73223          	sd	a5,1124(a4) # 80013f18 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003abc:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003ac0:	00813403          	ld	s0,8(sp)
    80003ac4:	01010113          	addi	sp,sp,16
    80003ac8:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003acc:	00010797          	auipc	a5,0x10
    80003ad0:	44c78793          	addi	a5,a5,1100 # 80013f18 <_ZN9Scheduler16schedulerPCBHeadE>
    80003ad4:	0007b423          	sd	zero,8(a5)
    80003ad8:	0007b023          	sd	zero,0(a5)
    80003adc:	fe1ff06f          	j	80003abc <_ZN9Scheduler3getEv+0x28>

0000000080003ae0 <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    80003ae0:	fe010113          	addi	sp,sp,-32
    80003ae4:	00113c23          	sd	ra,24(sp)
    80003ae8:	00813823          	sd	s0,16(sp)
    80003aec:	00913423          	sd	s1,8(sp)
    80003af0:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    80003af4:	00010497          	auipc	s1,0x10
    80003af8:	4244b483          	ld	s1,1060(s1) # 80013f18 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003afc:	02048863          	beqz	s1,80003b2c <_ZN9Scheduler5printEv+0x4c>
    {
        KConsole::trapPrintInt((uint64)curr, 16);
    80003b00:	00000613          	li	a2,0
    80003b04:	01000593          	li	a1,16
    80003b08:	00048513          	mv	a0,s1
    80003b0c:	00000097          	auipc	ra,0x0
    80003b10:	cc0080e7          	jalr	-832(ra) # 800037cc <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    80003b14:	00005517          	auipc	a0,0x5
    80003b18:	66c50513          	addi	a0,a0,1644 # 80009180 <CONSOLE_STATUS+0x170>
    80003b1c:	00000097          	auipc	ra,0x0
    80003b20:	c6c080e7          	jalr	-916(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
        curr = curr->nextPCB;
    80003b24:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003b28:	fd5ff06f          	j	80003afc <_ZN9Scheduler5printEv+0x1c>
    }
}
    80003b2c:	01813083          	ld	ra,24(sp)
    80003b30:	01013403          	ld	s0,16(sp)
    80003b34:	00813483          	ld	s1,8(sp)
    80003b38:	02010113          	addi	sp,sp,32
    80003b3c:	00008067          	ret

0000000080003b40 <main>:
#include "../h/Riscv.hpp"

void main()
{
    80003b40:	ff010113          	addi	sp,sp,-16
    80003b44:	00113423          	sd	ra,8(sp)
    80003b48:	00813023          	sd	s0,0(sp)
    80003b4c:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003b50:	00001097          	auipc	ra,0x1
    80003b54:	b40080e7          	jalr	-1216(ra) # 80004690 <_ZN5Riscv10kernelMainEv>
    80003b58:	00813083          	ld	ra,8(sp)
    80003b5c:	00013403          	ld	s0,0(sp)
    80003b60:	01010113          	addi	sp,sp,16
    80003b64:	00008067          	ret

0000000080003b68 <_Z14buddyInitTest1v>:
#include "../h/buddyTests.hpp"
#include "../h/KConsole.hpp"
#include "../h/MemoryAllocator.hpp"

void buddyInitTest1()
{
    80003b68:	ff010113          	addi	sp,sp,-16
    80003b6c:	00113423          	sd	ra,8(sp)
    80003b70:	00813023          	sd	s0,0(sp)
    80003b74:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 18);
    80003b78:	01200593          	li	a1,18
    80003b7c:	00008797          	auipc	a5,0x8
    80003b80:	2547b783          	ld	a5,596(a5) # 8000bdd0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003b84:	0007b503          	ld	a0,0(a5)
    80003b88:	fffff097          	auipc	ra,0xfffff
    80003b8c:	4d8080e7          	jalr	1240(ra) # 80003060 <_Z10buddy_initPvm>
    printBuddyInfo(buddy);
    80003b90:	fffff097          	auipc	ra,0xfffff
    80003b94:	628080e7          	jalr	1576(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003b98:	00813083          	ld	ra,8(sp)
    80003b9c:	00013403          	ld	s0,0(sp)
    80003ba0:	01010113          	addi	sp,sp,16
    80003ba4:	00008067          	ret

0000000080003ba8 <_Z20buddyOnlyAllocsTest1v>:

void buddyOnlyAllocsTest1()
{
    80003ba8:	fe010113          	addi	sp,sp,-32
    80003bac:	00113c23          	sd	ra,24(sp)
    80003bb0:	00813823          	sd	s0,16(sp)
    80003bb4:	00913423          	sd	s1,8(sp)
    80003bb8:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003bbc:	00a00593          	li	a1,10
    80003bc0:	00008797          	auipc	a5,0x8
    80003bc4:	2107b783          	ld	a5,528(a5) # 8000bdd0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003bc8:	0007b503          	ld	a0,0(a5)
    80003bcc:	fffff097          	auipc	ra,0xfffff
    80003bd0:	494080e7          	jalr	1172(ra) # 80003060 <_Z10buddy_initPvm>
    80003bd4:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    80003bd8:	fffff097          	auipc	ra,0xfffff
    80003bdc:	5e0080e7          	jalr	1504(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003be0:	00100593          	li	a1,1
    80003be4:	00048513          	mv	a0,s1
    80003be8:	fffff097          	auipc	ra,0xfffff
    80003bec:	268080e7          	jalr	616(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003bf0:	00048513          	mv	a0,s1
    80003bf4:	fffff097          	auipc	ra,0xfffff
    80003bf8:	5c4080e7          	jalr	1476(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003bfc:	00100593          	li	a1,1
    80003c00:	00048513          	mv	a0,s1
    80003c04:	fffff097          	auipc	ra,0xfffff
    80003c08:	24c080e7          	jalr	588(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003c0c:	00048513          	mv	a0,s1
    80003c10:	fffff097          	auipc	ra,0xfffff
    80003c14:	5a8080e7          	jalr	1448(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003c18:	00100593          	li	a1,1
    80003c1c:	00048513          	mv	a0,s1
    80003c20:	fffff097          	auipc	ra,0xfffff
    80003c24:	230080e7          	jalr	560(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003c28:	00048513          	mv	a0,s1
    80003c2c:	fffff097          	auipc	ra,0xfffff
    80003c30:	58c080e7          	jalr	1420(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,3);
    80003c34:	00300593          	li	a1,3
    80003c38:	00048513          	mv	a0,s1
    80003c3c:	fffff097          	auipc	ra,0xfffff
    80003c40:	214080e7          	jalr	532(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003c44:	00048513          	mv	a0,s1
    80003c48:	fffff097          	auipc	ra,0xfffff
    80003c4c:	570080e7          	jalr	1392(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003c50:	01813083          	ld	ra,24(sp)
    80003c54:	01013403          	ld	s0,16(sp)
    80003c58:	00813483          	ld	s1,8(sp)
    80003c5c:	02010113          	addi	sp,sp,32
    80003c60:	00008067          	ret

0000000080003c64 <_Z20buddyOnlyAllocsTest2v>:

void buddyOnlyAllocsTest2()
{
    80003c64:	fe010113          	addi	sp,sp,-32
    80003c68:	00113c23          	sd	ra,24(sp)
    80003c6c:	00813823          	sd	s0,16(sp)
    80003c70:	00913423          	sd	s1,8(sp)
    80003c74:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003c78:	00a00593          	li	a1,10
    80003c7c:	00008797          	auipc	a5,0x8
    80003c80:	1547b783          	ld	a5,340(a5) # 8000bdd0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003c84:	0007b503          	ld	a0,0(a5)
    80003c88:	fffff097          	auipc	ra,0xfffff
    80003c8c:	3d8080e7          	jalr	984(ra) # 80003060 <_Z10buddy_initPvm>
    80003c90:	00050493          	mv	s1,a0
    void* adr = buddy_alloc(buddy, 100);
    80003c94:	06400593          	li	a1,100
    80003c98:	fffff097          	auipc	ra,0xfffff
    80003c9c:	1b8080e7          	jalr	440(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
    if(adr == nullptr)
    80003ca0:	00050c63          	beqz	a0,80003cb8 <_Z20buddyOnlyAllocsTest2v+0x54>
    {
        printBuddyInfo(buddy);
    }
}
    80003ca4:	01813083          	ld	ra,24(sp)
    80003ca8:	01013403          	ld	s0,16(sp)
    80003cac:	00813483          	ld	s1,8(sp)
    80003cb0:	02010113          	addi	sp,sp,32
    80003cb4:	00008067          	ret
        printBuddyInfo(buddy);
    80003cb8:	00048513          	mv	a0,s1
    80003cbc:	fffff097          	auipc	ra,0xfffff
    80003cc0:	4fc080e7          	jalr	1276(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003cc4:	fe1ff06f          	j	80003ca4 <_Z20buddyOnlyAllocsTest2v+0x40>

0000000080003cc8 <_Z19buddyAllocFreeTest1v>:

void buddyAllocFreeTest1()
{
    80003cc8:	fd010113          	addi	sp,sp,-48
    80003ccc:	02113423          	sd	ra,40(sp)
    80003cd0:	02813023          	sd	s0,32(sp)
    80003cd4:	00913c23          	sd	s1,24(sp)
    80003cd8:	01213823          	sd	s2,16(sp)
    80003cdc:	01313423          	sd	s3,8(sp)
    80003ce0:	03010413          	addi	s0,sp,48
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003ce4:	00a00593          	li	a1,10
    80003ce8:	00008797          	auipc	a5,0x8
    80003cec:	0e87b783          	ld	a5,232(a5) # 8000bdd0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003cf0:	0007b503          	ld	a0,0(a5)
    80003cf4:	fffff097          	auipc	ra,0xfffff
    80003cf8:	36c080e7          	jalr	876(ra) # 80003060 <_Z10buddy_initPvm>
    80003cfc:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    80003d00:	fffff097          	auipc	ra,0xfffff
    80003d04:	4b8080e7          	jalr	1208(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
    void* adr = buddy_alloc(buddy,1);
    80003d08:	00100593          	li	a1,1
    80003d0c:	00048513          	mv	a0,s1
    80003d10:	fffff097          	auipc	ra,0xfffff
    80003d14:	140080e7          	jalr	320(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
    80003d18:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003d1c:	00048513          	mv	a0,s1
    80003d20:	fffff097          	auipc	ra,0xfffff
    80003d24:	498080e7          	jalr	1176(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003d28:	00100613          	li	a2,1
    80003d2c:	00090593          	mv	a1,s2
    80003d30:	00048513          	mv	a0,s1
    80003d34:	fffff097          	auipc	ra,0xfffff
    80003d38:	40c080e7          	jalr	1036(ra) # 80003140 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003d3c:	00048513          	mv	a0,s1
    80003d40:	fffff097          	auipc	ra,0xfffff
    80003d44:	478080e7          	jalr	1144(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>

    adr = buddy_alloc(buddy, 2);
    80003d48:	00200593          	li	a1,2
    80003d4c:	00048513          	mv	a0,s1
    80003d50:	fffff097          	auipc	ra,0xfffff
    80003d54:	100080e7          	jalr	256(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
    80003d58:	00050913          	mv	s2,a0
    void* adr2 = buddy_alloc(buddy, 3);
    80003d5c:	00300593          	li	a1,3
    80003d60:	00048513          	mv	a0,s1
    80003d64:	fffff097          	auipc	ra,0xfffff
    80003d68:	0ec080e7          	jalr	236(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
    80003d6c:	00050993          	mv	s3,a0
    printBuddyInfo(buddy);
    80003d70:	00048513          	mv	a0,s1
    80003d74:	fffff097          	auipc	ra,0xfffff
    80003d78:	444080e7          	jalr	1092(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr, 2);
    80003d7c:	00200613          	li	a2,2
    80003d80:	00090593          	mv	a1,s2
    80003d84:	00048513          	mv	a0,s1
    80003d88:	fffff097          	auipc	ra,0xfffff
    80003d8c:	3b8080e7          	jalr	952(ra) # 80003140 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003d90:	00048513          	mv	a0,s1
    80003d94:	fffff097          	auipc	ra,0xfffff
    80003d98:	424080e7          	jalr	1060(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
    adr = buddy_alloc(buddy, 1);
    80003d9c:	00100593          	li	a1,1
    80003da0:	00048513          	mv	a0,s1
    80003da4:	fffff097          	auipc	ra,0xfffff
    80003da8:	0ac080e7          	jalr	172(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
    80003dac:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003db0:	00048513          	mv	a0,s1
    80003db4:	fffff097          	auipc	ra,0xfffff
    80003db8:	404080e7          	jalr	1028(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr2, 3);
    80003dbc:	00300613          	li	a2,3
    80003dc0:	00098593          	mv	a1,s3
    80003dc4:	00048513          	mv	a0,s1
    80003dc8:	fffff097          	auipc	ra,0xfffff
    80003dcc:	378080e7          	jalr	888(ra) # 80003140 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003dd0:	00048513          	mv	a0,s1
    80003dd4:	fffff097          	auipc	ra,0xfffff
    80003dd8:	3e4080e7          	jalr	996(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003ddc:	00100613          	li	a2,1
    80003de0:	00090593          	mv	a1,s2
    80003de4:	00048513          	mv	a0,s1
    80003de8:	fffff097          	auipc	ra,0xfffff
    80003dec:	358080e7          	jalr	856(ra) # 80003140 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003df0:	00048513          	mv	a0,s1
    80003df4:	fffff097          	auipc	ra,0xfffff
    80003df8:	3c4080e7          	jalr	964(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003dfc:	02813083          	ld	ra,40(sp)
    80003e00:	02013403          	ld	s0,32(sp)
    80003e04:	01813483          	ld	s1,24(sp)
    80003e08:	01013903          	ld	s2,16(sp)
    80003e0c:	00813983          	ld	s3,8(sp)
    80003e10:	03010113          	addi	sp,sp,48
    80003e14:	00008067          	ret

0000000080003e18 <_Z13buddyTestMixav>:

void buddyTestMixa()
{
    80003e18:	fc010113          	addi	sp,sp,-64
    80003e1c:	02113c23          	sd	ra,56(sp)
    80003e20:	02813823          	sd	s0,48(sp)
    80003e24:	02913423          	sd	s1,40(sp)
    80003e28:	03213023          	sd	s2,32(sp)
    80003e2c:	01313c23          	sd	s3,24(sp)
    80003e30:	01413823          	sd	s4,16(sp)
    80003e34:	01513423          	sd	s5,8(sp)
    80003e38:	04010413          	addi	s0,sp,64
    size_t mask = ((size_t)-1) << 12;
    buddyAllocator* buddy = (buddyAllocator*)(((size_t)HEAP_START_ADDR & mask) + (1 << 12));
    80003e3c:	00008797          	auipc	a5,0x8
    80003e40:	f947b783          	ld	a5,-108(a5) # 8000bdd0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003e44:	0007b983          	ld	s3,0(a5)
    80003e48:	fffff7b7          	lui	a5,0xfffff
    80003e4c:	00f9f9b3          	and	s3,s3,a5
    80003e50:	000017b7          	lui	a5,0x1
    80003e54:	00f989b3          	add	s3,s3,a5
    void** x = (void**)MemoryAllocator::kmalloc(5000*sizeof(void*));
    80003e58:	0000a537          	lui	a0,0xa
    80003e5c:	c4050513          	addi	a0,a0,-960 # 9c40 <_entry-0x7fff63c0>
    80003e60:	00001097          	auipc	ra,0x1
    80003e64:	ff4080e7          	jalr	-12(ra) # 80004e54 <_ZN15MemoryAllocator7kmallocEm>
    80003e68:	00050a13          	mv	s4,a0
    printBuddyInfo(buddy);
    80003e6c:	00098513          	mv	a0,s3
    80003e70:	fffff097          	auipc	ra,0xfffff
    80003e74:	348080e7          	jalr	840(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
    for(int i = 0; i < 5000;i++)
    80003e78:	00000493          	li	s1,0
    80003e7c:	0080006f          	j	80003e84 <_Z13buddyTestMixav+0x6c>
    80003e80:	0014849b          	addiw	s1,s1,1
    80003e84:	000017b7          	lui	a5,0x1
    80003e88:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80003e8c:	0697c463          	blt	a5,s1,80003ef4 <_Z13buddyTestMixav+0xdc>
    {
        x[i] = buddy_alloc(buddy, 2);
    80003e90:	00349913          	slli	s2,s1,0x3
    80003e94:	012a0933          	add	s2,s4,s2
    80003e98:	00200593          	li	a1,2
    80003e9c:	00098513          	mv	a0,s3
    80003ea0:	fffff097          	auipc	ra,0xfffff
    80003ea4:	fb0080e7          	jalr	-80(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
    80003ea8:	00a93023          	sd	a0,0(s2)
        if(x[i] == nullptr)
    80003eac:	fc051ae3          	bnez	a0,80003e80 <_Z13buddyTestMixav+0x68>
        {
            KConsole::trapPrintStringInt("Bad allocation ", i);
    80003eb0:	00a00613          	li	a2,10
    80003eb4:	00048593          	mv	a1,s1
    80003eb8:	00005517          	auipc	a0,0x5
    80003ebc:	4c850513          	addi	a0,a0,1224 # 80009380 <CONSOLE_STATUS+0x370>
    80003ec0:	00000097          	auipc	ra,0x0
    80003ec4:	9a0080e7          	jalr	-1632(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
            for(int j = 0;j < i;j++)
    80003ec8:	00000913          	li	s2,0
    80003ecc:	02995463          	bge	s2,s1,80003ef4 <_Z13buddyTestMixav+0xdc>
            {
                buddy_free(buddy, x[j], 2);
    80003ed0:	00391793          	slli	a5,s2,0x3
    80003ed4:	00fa07b3          	add	a5,s4,a5
    80003ed8:	00200613          	li	a2,2
    80003edc:	0007b583          	ld	a1,0(a5)
    80003ee0:	00098513          	mv	a0,s3
    80003ee4:	fffff097          	auipc	ra,0xfffff
    80003ee8:	25c080e7          	jalr	604(ra) # 80003140 <_Z10buddy_freeP14buddyAllocatorPvm>
            for(int j = 0;j < i;j++)
    80003eec:	0019091b          	addiw	s2,s2,1
    80003ef0:	fddff06f          	j	80003ecc <_Z13buddyTestMixav+0xb4>
            }
            break;
        }
    }
    printBuddyInfo(buddy);
    80003ef4:	00098513          	mv	a0,s3
    80003ef8:	fffff097          	auipc	ra,0xfffff
    80003efc:	2c0080e7          	jalr	704(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003f00:	03813083          	ld	ra,56(sp)
    80003f04:	03013403          	ld	s0,48(sp)
    80003f08:	02813483          	ld	s1,40(sp)
    80003f0c:	02013903          	ld	s2,32(sp)
    80003f10:	01813983          	ld	s3,24(sp)
    80003f14:	01013a03          	ld	s4,16(sp)
    80003f18:	00813a83          	ld	s5,8(sp)
    80003f1c:	04010113          	addi	sp,sp,64
    80003f20:	00008067          	ret

0000000080003f24 <_ZN6Thread6runnerEPv>:
    myHandle = nullptr;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    80003f24:	ff010113          	addi	sp,sp,-16
    80003f28:	00113423          	sd	ra,8(sp)
    80003f2c:	00813023          	sd	s0,0(sp)
    80003f30:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    80003f34:	00053783          	ld	a5,0(a0)
    80003f38:	0107b783          	ld	a5,16(a5)
    80003f3c:	000780e7          	jalr	a5
}
    80003f40:	00813083          	ld	ra,8(sp)
    80003f44:	00013403          	ld	s0,0(sp)
    80003f48:	01010113          	addi	sp,sp,16
    80003f4c:	00008067          	ret

0000000080003f50 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    80003f50:	00008797          	auipc	a5,0x8
    80003f54:	dc878793          	addi	a5,a5,-568 # 8000bd18 <_ZTV6Thread+0x10>
    80003f58:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    80003f5c:	00853503          	ld	a0,8(a0)
    80003f60:	02050663          	beqz	a0,80003f8c <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    80003f64:	ff010113          	addi	sp,sp,-16
    80003f68:	00113423          	sd	ra,8(sp)
    80003f6c:	00813023          	sd	s0,0(sp)
    80003f70:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003f74:	ffffe097          	auipc	ra,0xffffe
    80003f78:	6cc080e7          	jalr	1740(ra) # 80002640 <_ZN7_threaddlEPv>
}
    80003f7c:	00813083          	ld	ra,8(sp)
    80003f80:	00013403          	ld	s0,0(sp)
    80003f84:	01010113          	addi	sp,sp,16
    80003f88:	00008067          	ret
    80003f8c:	00008067          	ret

0000000080003f90 <_ZN9SemaphoreD1Ev>:
    if(myHandle == nullptr)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80003f90:	00008797          	auipc	a5,0x8
    80003f94:	db078793          	addi	a5,a5,-592 # 8000bd40 <_ZTV9Semaphore+0x10>
    80003f98:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80003f9c:	00853503          	ld	a0,8(a0)
    80003fa0:	02050663          	beqz	a0,80003fcc <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80003fa4:	ff010113          	addi	sp,sp,-16
    80003fa8:	00113423          	sd	ra,8(sp)
    80003fac:	00813023          	sd	s0,0(sp)
    80003fb0:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003fb4:	00000097          	auipc	ra,0x0
    80003fb8:	468080e7          	jalr	1128(ra) # 8000441c <_ZN4_semdlEPv>
}
    80003fbc:	00813083          	ld	ra,8(sp)
    80003fc0:	00013403          	ld	s0,0(sp)
    80003fc4:	01010113          	addi	sp,sp,16
    80003fc8:	00008067          	ret
    80003fcc:	00008067          	ret

0000000080003fd0 <_Znwm>:
{
    80003fd0:	ff010113          	addi	sp,sp,-16
    80003fd4:	00113423          	sd	ra,8(sp)
    80003fd8:	00813023          	sd	s0,0(sp)
    80003fdc:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003fe0:	ffffe097          	auipc	ra,0xffffe
    80003fe4:	308080e7          	jalr	776(ra) # 800022e8 <_Z9mem_allocm>
}
    80003fe8:	00813083          	ld	ra,8(sp)
    80003fec:	00013403          	ld	s0,0(sp)
    80003ff0:	01010113          	addi	sp,sp,16
    80003ff4:	00008067          	ret

0000000080003ff8 <_ZdlPv>:
{
    80003ff8:	ff010113          	addi	sp,sp,-16
    80003ffc:	00113423          	sd	ra,8(sp)
    80004000:	00813023          	sd	s0,0(sp)
    80004004:	01010413          	addi	s0,sp,16
    mem_free(p);
    80004008:	ffffe097          	auipc	ra,0xffffe
    8000400c:	310080e7          	jalr	784(ra) # 80002318 <_Z8mem_freePv>
}
    80004010:	00813083          	ld	ra,8(sp)
    80004014:	00013403          	ld	s0,0(sp)
    80004018:	01010113          	addi	sp,sp,16
    8000401c:	00008067          	ret

0000000080004020 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80004020:	fe010113          	addi	sp,sp,-32
    80004024:	00113c23          	sd	ra,24(sp)
    80004028:	00813823          	sd	s0,16(sp)
    8000402c:	00913423          	sd	s1,8(sp)
    80004030:	02010413          	addi	s0,sp,32
    80004034:	00050493          	mv	s1,a0
}
    80004038:	00000097          	auipc	ra,0x0
    8000403c:	f18080e7          	jalr	-232(ra) # 80003f50 <_ZN6ThreadD1Ev>
    80004040:	00048513          	mv	a0,s1
    80004044:	00000097          	auipc	ra,0x0
    80004048:	fb4080e7          	jalr	-76(ra) # 80003ff8 <_ZdlPv>
    8000404c:	01813083          	ld	ra,24(sp)
    80004050:	01013403          	ld	s0,16(sp)
    80004054:	00813483          	ld	s1,8(sp)
    80004058:	02010113          	addi	sp,sp,32
    8000405c:	00008067          	ret

0000000080004060 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80004060:	fe010113          	addi	sp,sp,-32
    80004064:	00113c23          	sd	ra,24(sp)
    80004068:	00813823          	sd	s0,16(sp)
    8000406c:	00913423          	sd	s1,8(sp)
    80004070:	02010413          	addi	s0,sp,32
    80004074:	00050493          	mv	s1,a0
}
    80004078:	00000097          	auipc	ra,0x0
    8000407c:	f18080e7          	jalr	-232(ra) # 80003f90 <_ZN9SemaphoreD1Ev>
    80004080:	00048513          	mv	a0,s1
    80004084:	00000097          	auipc	ra,0x0
    80004088:	f74080e7          	jalr	-140(ra) # 80003ff8 <_ZdlPv>
    8000408c:	01813083          	ld	ra,24(sp)
    80004090:	01013403          	ld	s0,16(sp)
    80004094:	00813483          	ld	s1,8(sp)
    80004098:	02010113          	addi	sp,sp,32
    8000409c:	00008067          	ret

00000000800040a0 <_ZN6Thread5startEv>:
    if(myHandle != nullptr)
    800040a0:	00853503          	ld	a0,8(a0)
    800040a4:	02050663          	beqz	a0,800040d0 <_ZN6Thread5startEv+0x30>
{
    800040a8:	ff010113          	addi	sp,sp,-16
    800040ac:	00113423          	sd	ra,8(sp)
    800040b0:	00813023          	sd	s0,0(sp)
    800040b4:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    800040b8:	ffffe097          	auipc	ra,0xffffe
    800040bc:	43c080e7          	jalr	1084(ra) # 800024f4 <_Z12thread_startPv>
}
    800040c0:	00813083          	ld	ra,8(sp)
    800040c4:	00013403          	ld	s0,0(sp)
    800040c8:	01010113          	addi	sp,sp,16
    800040cc:	00008067          	ret
        return -1;
    800040d0:	fff00513          	li	a0,-1
}
    800040d4:	00008067          	ret

00000000800040d8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800040d8:	ff010113          	addi	sp,sp,-16
    800040dc:	00113423          	sd	ra,8(sp)
    800040e0:	00813023          	sd	s0,0(sp)
    800040e4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800040e8:	ffffe097          	auipc	ra,0xffffe
    800040ec:	2dc080e7          	jalr	732(ra) # 800023c4 <_Z15thread_dispatchv>
}
    800040f0:	00813083          	ld	ra,8(sp)
    800040f4:	00013403          	ld	s0,0(sp)
    800040f8:	01010113          	addi	sp,sp,16
    800040fc:	00008067          	ret

0000000080004100 <_ZN6Thread5sleepEm>:
{
    80004100:	ff010113          	addi	sp,sp,-16
    80004104:	00113423          	sd	ra,8(sp)
    80004108:	00813023          	sd	s0,0(sp)
    8000410c:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80004110:	ffffe097          	auipc	ra,0xffffe
    80004114:	3b8080e7          	jalr	952(ra) # 800024c8 <_Z10time_sleepm>
}
    80004118:	00813083          	ld	ra,8(sp)
    8000411c:	00013403          	ld	s0,0(sp)
    80004120:	01010113          	addi	sp,sp,16
    80004124:	00008067          	ret

0000000080004128 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    80004128:	fe010113          	addi	sp,sp,-32
    8000412c:	00113c23          	sd	ra,24(sp)
    80004130:	00813823          	sd	s0,16(sp)
    80004134:	00913423          	sd	s1,8(sp)
    80004138:	01213023          	sd	s2,0(sp)
    8000413c:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    80004140:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    80004144:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    80004148:	0004b783          	ld	a5,0(s1)
    8000414c:	0187b783          	ld	a5,24(a5)
    80004150:	00048513          	mv	a0,s1
    80004154:	000780e7          	jalr	a5
        Thread::sleep(time);
    80004158:	00090513          	mv	a0,s2
    8000415c:	00000097          	auipc	ra,0x0
    80004160:	fa4080e7          	jalr	-92(ra) # 80004100 <_ZN6Thread5sleepEm>
    while(true)
    80004164:	fe5ff06f          	j	80004148 <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080004168 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80004168:	ff010113          	addi	sp,sp,-16
    8000416c:	00113423          	sd	ra,8(sp)
    80004170:	00813023          	sd	s0,0(sp)
    80004174:	01010413          	addi	s0,sp,16
    80004178:	00008797          	auipc	a5,0x8
    8000417c:	ba078793          	addi	a5,a5,-1120 # 8000bd18 <_ZTV6Thread+0x10>
    80004180:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80004184:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    80004188:	00850513          	addi	a0,a0,8
    8000418c:	ffffe097          	auipc	ra,0xffffe
    80004190:	394080e7          	jalr	916(ra) # 80002520 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80004194:	00813083          	ld	ra,8(sp)
    80004198:	00013403          	ld	s0,0(sp)
    8000419c:	01010113          	addi	sp,sp,16
    800041a0:	00008067          	ret

00000000800041a4 <_ZN6ThreadC1Ev>:
Thread::Thread()
    800041a4:	ff010113          	addi	sp,sp,-16
    800041a8:	00113423          	sd	ra,8(sp)
    800041ac:	00813023          	sd	s0,0(sp)
    800041b0:	01010413          	addi	s0,sp,16
    800041b4:	00008797          	auipc	a5,0x8
    800041b8:	b6478793          	addi	a5,a5,-1180 # 8000bd18 <_ZTV6Thread+0x10>
    800041bc:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800041c0:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    800041c4:	00050613          	mv	a2,a0
    800041c8:	00000597          	auipc	a1,0x0
    800041cc:	d5c58593          	addi	a1,a1,-676 # 80003f24 <_ZN6Thread6runnerEPv>
    800041d0:	00850513          	addi	a0,a0,8
    800041d4:	ffffe097          	auipc	ra,0xffffe
    800041d8:	34c080e7          	jalr	844(ra) # 80002520 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    800041dc:	00813083          	ld	ra,8(sp)
    800041e0:	00013403          	ld	s0,0(sp)
    800041e4:	01010113          	addi	sp,sp,16
    800041e8:	00008067          	ret

00000000800041ec <_ZN9Semaphore4waitEv>:
    if(myHandle == nullptr)
    800041ec:	00853503          	ld	a0,8(a0)
    800041f0:	02050663          	beqz	a0,8000421c <_ZN9Semaphore4waitEv+0x30>
{
    800041f4:	ff010113          	addi	sp,sp,-16
    800041f8:	00113423          	sd	ra,8(sp)
    800041fc:	00813023          	sd	s0,0(sp)
    80004200:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80004204:	ffffe097          	auipc	ra,0xffffe
    80004208:	26c080e7          	jalr	620(ra) # 80002470 <_Z8sem_waitP4_sem>
}
    8000420c:	00813083          	ld	ra,8(sp)
    80004210:	00013403          	ld	s0,0(sp)
    80004214:	01010113          	addi	sp,sp,16
    80004218:	00008067          	ret
        return -1;
    8000421c:	fff00513          	li	a0,-1
}
    80004220:	00008067          	ret

0000000080004224 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    80004224:	fe010113          	addi	sp,sp,-32
    80004228:	00113c23          	sd	ra,24(sp)
    8000422c:	00813823          	sd	s0,16(sp)
    80004230:	00913423          	sd	s1,8(sp)
    80004234:	02010413          	addi	s0,sp,32
    80004238:	00050493          	mv	s1,a0
    8000423c:	00008797          	auipc	a5,0x8
    80004240:	b0478793          	addi	a5,a5,-1276 # 8000bd40 <_ZTV9Semaphore+0x10>
    80004244:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    80004248:	00850513          	addi	a0,a0,8
    8000424c:	ffffe097          	auipc	ra,0xffffe
    80004250:	1c0080e7          	jalr	448(ra) # 8000240c <_Z8sem_openPP4_semj>
    if(retval != 0)
    80004254:	00050463          	beqz	a0,8000425c <_ZN9SemaphoreC1Ej+0x38>
        myHandle = nullptr;
    80004258:	0004b423          	sd	zero,8(s1)
}
    8000425c:	01813083          	ld	ra,24(sp)
    80004260:	01013403          	ld	s0,16(sp)
    80004264:	00813483          	ld	s1,8(sp)
    80004268:	02010113          	addi	sp,sp,32
    8000426c:	00008067          	ret

0000000080004270 <_ZN9Semaphore6signalEv>:
    if(myHandle == nullptr)
    80004270:	00853503          	ld	a0,8(a0)
    80004274:	02050663          	beqz	a0,800042a0 <_ZN9Semaphore6signalEv+0x30>
{
    80004278:	ff010113          	addi	sp,sp,-16
    8000427c:	00113423          	sd	ra,8(sp)
    80004280:	00813023          	sd	s0,0(sp)
    80004284:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80004288:	ffffe097          	auipc	ra,0xffffe
    8000428c:	214080e7          	jalr	532(ra) # 8000249c <_Z10sem_signalP4_sem>
}
    80004290:	00813083          	ld	ra,8(sp)
    80004294:	00013403          	ld	s0,0(sp)
    80004298:	01010113          	addi	sp,sp,16
    8000429c:	00008067          	ret
        return -1;
    800042a0:	fff00513          	li	a0,-1
}
    800042a4:	00008067          	ret

00000000800042a8 <_ZN7Console4getcEv>:
{
    800042a8:	ff010113          	addi	sp,sp,-16
    800042ac:	00113423          	sd	ra,8(sp)
    800042b0:	00813023          	sd	s0,0(sp)
    800042b4:	01010413          	addi	s0,sp,16
    return ::getc();
    800042b8:	ffffe097          	auipc	ra,0xffffe
    800042bc:	2e8080e7          	jalr	744(ra) # 800025a0 <_Z4getcv>
}
    800042c0:	00813083          	ld	ra,8(sp)
    800042c4:	00013403          	ld	s0,0(sp)
    800042c8:	01010113          	addi	sp,sp,16
    800042cc:	00008067          	ret

00000000800042d0 <_ZN7Console4putcEc>:
{
    800042d0:	ff010113          	addi	sp,sp,-16
    800042d4:	00113423          	sd	ra,8(sp)
    800042d8:	00813023          	sd	s0,0(sp)
    800042dc:	01010413          	addi	s0,sp,16
    return ::putc(c);
    800042e0:	ffffe097          	auipc	ra,0xffffe
    800042e4:	2e8080e7          	jalr	744(ra) # 800025c8 <_Z4putcc>
}
    800042e8:	00813083          	ld	ra,8(sp)
    800042ec:	00013403          	ld	s0,0(sp)
    800042f0:	01010113          	addi	sp,sp,16
    800042f4:	00008067          	ret

00000000800042f8 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800042f8:	fe010113          	addi	sp,sp,-32
    800042fc:	00113c23          	sd	ra,24(sp)
    80004300:	00813823          	sd	s0,16(sp)
    80004304:	00913423          	sd	s1,8(sp)
    80004308:	01213023          	sd	s2,0(sp)
    8000430c:	02010413          	addi	s0,sp,32
    80004310:	00050493          	mv	s1,a0
    80004314:	00058913          	mv	s2,a1
    80004318:	01000513          	li	a0,16
    8000431c:	00000097          	auipc	ra,0x0
    80004320:	cb4080e7          	jalr	-844(ra) # 80003fd0 <_Znwm>
    80004324:	00050613          	mv	a2,a0
    80004328:	00050663          	beqz	a0,80004334 <_ZN14PeriodicThreadC1Em+0x3c>
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    8000432c:	00953023          	sd	s1,0(a0)
    80004330:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80004334:	00000597          	auipc	a1,0x0
    80004338:	df458593          	addi	a1,a1,-524 # 80004128 <_ZN14PeriodicThread6runnerEPv>
    8000433c:	00048513          	mv	a0,s1
    80004340:	00000097          	auipc	ra,0x0
    80004344:	e28080e7          	jalr	-472(ra) # 80004168 <_ZN6ThreadC1EPFvPvES0_>
    80004348:	00008797          	auipc	a5,0x8
    8000434c:	9a078793          	addi	a5,a5,-1632 # 8000bce8 <_ZTV14PeriodicThread+0x10>
    80004350:	00f4b023          	sd	a5,0(s1)
}
    80004354:	01813083          	ld	ra,24(sp)
    80004358:	01013403          	ld	s0,16(sp)
    8000435c:	00813483          	ld	s1,8(sp)
    80004360:	00013903          	ld	s2,0(sp)
    80004364:	02010113          	addi	sp,sp,32
    80004368:	00008067          	ret

000000008000436c <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    8000436c:	ff010113          	addi	sp,sp,-16
    80004370:	00813423          	sd	s0,8(sp)
    80004374:	01010413          	addi	s0,sp,16
    80004378:	00813403          	ld	s0,8(sp)
    8000437c:	01010113          	addi	sp,sp,16
    80004380:	00008067          	ret

0000000080004384 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80004384:	ff010113          	addi	sp,sp,-16
    80004388:	00813423          	sd	s0,8(sp)
    8000438c:	01010413          	addi	s0,sp,16
    80004390:	00813403          	ld	s0,8(sp)
    80004394:	01010113          	addi	sp,sp,16
    80004398:	00008067          	ret

000000008000439c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    8000439c:	ff010113          	addi	sp,sp,-16
    800043a0:	00113423          	sd	ra,8(sp)
    800043a4:	00813023          	sd	s0,0(sp)
    800043a8:	01010413          	addi	s0,sp,16
    800043ac:	00008797          	auipc	a5,0x8
    800043b0:	93c78793          	addi	a5,a5,-1732 # 8000bce8 <_ZTV14PeriodicThread+0x10>
    800043b4:	00f53023          	sd	a5,0(a0)
    800043b8:	00000097          	auipc	ra,0x0
    800043bc:	b98080e7          	jalr	-1128(ra) # 80003f50 <_ZN6ThreadD1Ev>
    800043c0:	00813083          	ld	ra,8(sp)
    800043c4:	00013403          	ld	s0,0(sp)
    800043c8:	01010113          	addi	sp,sp,16
    800043cc:	00008067          	ret

00000000800043d0 <_ZN14PeriodicThreadD0Ev>:
    800043d0:	fe010113          	addi	sp,sp,-32
    800043d4:	00113c23          	sd	ra,24(sp)
    800043d8:	00813823          	sd	s0,16(sp)
    800043dc:	00913423          	sd	s1,8(sp)
    800043e0:	02010413          	addi	s0,sp,32
    800043e4:	00050493          	mv	s1,a0
    800043e8:	00008797          	auipc	a5,0x8
    800043ec:	90078793          	addi	a5,a5,-1792 # 8000bce8 <_ZTV14PeriodicThread+0x10>
    800043f0:	00f53023          	sd	a5,0(a0)
    800043f4:	00000097          	auipc	ra,0x0
    800043f8:	b5c080e7          	jalr	-1188(ra) # 80003f50 <_ZN6ThreadD1Ev>
    800043fc:	00048513          	mv	a0,s1
    80004400:	00000097          	auipc	ra,0x0
    80004404:	bf8080e7          	jalr	-1032(ra) # 80003ff8 <_ZdlPv>
    80004408:	01813083          	ld	ra,24(sp)
    8000440c:	01013403          	ld	s0,16(sp)
    80004410:	00813483          	ld	s1,8(sp)
    80004414:	02010113          	addi	sp,sp,32
    80004418:	00008067          	ret

000000008000441c <_ZN4_semdlEPv>:
//

#include "../h/_sem.hpp"
#include "../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    8000441c:	ff010113          	addi	sp,sp,-16
    80004420:	00113423          	sd	ra,8(sp)
    80004424:	00813023          	sd	s0,0(sp)
    80004428:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    8000442c:	ffffe097          	auipc	ra,0xffffe
    80004430:	018080e7          	jalr	24(ra) # 80002444 <_Z9sem_closeP4_sem>
}
    80004434:	00813083          	ld	ra,8(sp)
    80004438:	00013403          	ld	s0,0(sp)
    8000443c:	01010113          	addi	sp,sp,16
    80004440:	00008067          	ret

0000000080004444 <_ZN5Riscv20initMemoryAllocationEv>:
bool Riscv::kernelMainCalled = false;
kmem_cache_t * Riscv::pcbCache = nullptr;
kmem_cache_t * Riscv::semaphoreCache = nullptr;

void Riscv::initMemoryAllocation()
{
    80004444:	ff010113          	addi	sp,sp,-16
    80004448:	00113423          	sd	ra,8(sp)
    8000444c:	00813023          	sd	s0,0(sp)
    80004450:	01010413          	addi	s0,sp,16
    size_t totalNumOfBytes = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    80004454:	00008797          	auipc	a5,0x8
    80004458:	97c7b783          	ld	a5,-1668(a5) # 8000bdd0 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000445c:	0007b503          	ld	a0,0(a5)
    80004460:	00008797          	auipc	a5,0x8
    80004464:	9d87b783          	ld	a5,-1576(a5) # 8000be38 <_GLOBAL_OFFSET_TABLE_+0x80>
    80004468:	0007b783          	ld	a5,0(a5)
    8000446c:	40a787b3          	sub	a5,a5,a0
    80004470:	00178793          	addi	a5,a5,1
    size_t bytesForKernel = totalNumOfBytes / 10; //TODO change this if needed
    80004474:	00a00713          	li	a4,10
    80004478:	02e7d7b3          	divu	a5,a5,a4
    size_t numOfBlocks = (bytesForKernel + BLOCK_NUM_OF_BYTES - 1) / BLOCK_NUM_OF_BYTES;
    8000447c:	00001737          	lui	a4,0x1
    80004480:	fff70713          	addi	a4,a4,-1 # fff <_entry-0x7ffff001>
    80004484:	00e787b3          	add	a5,a5,a4

    void* newStartAddr = (void*)((size_t)HEAP_START_ADDR + numOfBlocks*BLOCK_NUM_OF_BYTES);
    80004488:	fffff737          	lui	a4,0xfffff
    8000448c:	00e7f7b3          	and	a5,a5,a4
    MemoryAllocator::initMemory(newStartAddr);
    80004490:	00f50533          	add	a0,a0,a5
    80004494:	00000097          	auipc	ra,0x0
    80004498:	5d0080e7          	jalr	1488(ra) # 80004a64 <_ZN15MemoryAllocator10initMemoryEPv>

    //kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    //pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    //semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
}
    8000449c:	00813083          	ld	ra,8(sp)
    800044a0:	00013403          	ld	s0,0(sp)
    800044a4:	01010113          	addi	sp,sp,16
    800044a8:	00008067          	ret

00000000800044ac <_ZN5Riscv10initSystemEv>:

void Riscv::initSystem()
{
    800044ac:	fe010113          	addi	sp,sp,-32
    800044b0:	00113c23          	sd	ra,24(sp)
    800044b4:	00813823          	sd	s0,16(sp)
    800044b8:	00913423          	sd	s1,8(sp)
    800044bc:	01213023          	sd	s2,0(sp)
    800044c0:	02010413          	addi	s0,sp,32
    w_stvec((uint64)&Riscv::supervisorTrap);
    800044c4:	00008797          	auipc	a5,0x8
    800044c8:	91c7b783          	ld	a5,-1764(a5) # 8000bde0 <_GLOBAL_OFFSET_TABLE_+0x28>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    800044cc:	10579073          	csrw	stvec,a5

    size_t totalNumOfBytes = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    800044d0:	00008497          	auipc	s1,0x8
    800044d4:	9004b483          	ld	s1,-1792(s1) # 8000bdd0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800044d8:	0004b503          	ld	a0,0(s1)
    800044dc:	00008797          	auipc	a5,0x8
    800044e0:	95c7b783          	ld	a5,-1700(a5) # 8000be38 <_GLOBAL_OFFSET_TABLE_+0x80>
    800044e4:	0007b783          	ld	a5,0(a5)
    800044e8:	40a787b3          	sub	a5,a5,a0
    800044ec:	00178793          	addi	a5,a5,1
    size_t bytesForKernel = totalNumOfBytes / 10; //TODO change this if needed
    800044f0:	00a00713          	li	a4,10
    800044f4:	02e7d7b3          	divu	a5,a5,a4
    size_t numOfBlocks = (bytesForKernel + BLOCK_NUM_OF_BYTES - 1) / BLOCK_NUM_OF_BYTES;
    800044f8:	00001737          	lui	a4,0x1
    800044fc:	fff70713          	addi	a4,a4,-1 # fff <_entry-0x7ffff001>
    80004500:	00e787b3          	add	a5,a5,a4
    80004504:	00c7d913          	srli	s2,a5,0xc
    void* newStartAddr = (void*)((size_t)HEAP_START_ADDR + numOfBlocks*BLOCK_NUM_OF_BYTES);
    80004508:	fffff737          	lui	a4,0xfffff
    8000450c:	00e7f7b3          	and	a5,a5,a4
    MemoryAllocator::initMemory(newStartAddr);
    80004510:	00f50533          	add	a0,a0,a5
    80004514:	00000097          	auipc	ra,0x0
    80004518:	550080e7          	jalr	1360(ra) # 80004a64 <_ZN15MemoryAllocator10initMemoryEPv>

    kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    8000451c:	0009059b          	sext.w	a1,s2
    80004520:	0004b503          	ld	a0,0(s1)
    80004524:	ffffd097          	auipc	ra,0xffffd
    80004528:	660080e7          	jalr	1632(ra) # 80001b84 <_Z9kmem_initPvi>
    pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    8000452c:	00000693          	li	a3,0
    80004530:	00000613          	li	a2,0
    80004534:	06000593          	li	a1,96
    80004538:	00005517          	auipc	a0,0x5
    8000453c:	e5850513          	addi	a0,a0,-424 # 80009390 <CONSOLE_STATUS+0x380>
    80004540:	ffffd097          	auipc	ra,0xffffd
    80004544:	7b4080e7          	jalr	1972(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004548:	00010497          	auipc	s1,0x10
    8000454c:	9e048493          	addi	s1,s1,-1568 # 80013f28 <_ZN5Riscv8pcbCacheE>
    80004550:	00a4b023          	sd	a0,0(s1)
    semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
    80004554:	00000693          	li	a3,0
    80004558:	00000613          	li	a2,0
    8000455c:	01800593          	li	a1,24
    80004560:	00005517          	auipc	a0,0x5
    80004564:	e4050513          	addi	a0,a0,-448 # 800093a0 <CONSOLE_STATUS+0x390>
    80004568:	ffffd097          	auipc	ra,0xffffd
    8000456c:	78c080e7          	jalr	1932(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004570:	00a4b423          	sd	a0,8(s1)

    //initMemoryAllocation();
    PCB::initialize();
    80004574:	ffffe097          	auipc	ra,0xffffe
    80004578:	2d4080e7          	jalr	724(ra) # 80002848 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    8000457c:	fffff097          	auipc	ra,0xfffff
    80004580:	d58080e7          	jalr	-680(ra) # 800032d4 <_ZN8KConsole10initializeEv>

}
    80004584:	01813083          	ld	ra,24(sp)
    80004588:	01013403          	ld	s0,16(sp)
    8000458c:	00813483          	ld	s1,8(sp)
    80004590:	00013903          	ld	s2,0(sp)
    80004594:	02010113          	addi	sp,sp,32
    80004598:	00008067          	ret

000000008000459c <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    8000459c:	ff010113          	addi	sp,sp,-16
    800045a0:	00813423          	sd	s0,8(sp)
    800045a4:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800045a8:	00200793          	li	a5,2
    800045ac:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    800045b0:	00813403          	ld	s0,8(sp)
    800045b4:	01010113          	addi	sp,sp,16
    800045b8:	00008067          	ret

00000000800045bc <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    800045bc:	ff010113          	addi	sp,sp,-16
    800045c0:	00813423          	sd	s0,8(sp)
    800045c4:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800045c8:	00200793          	li	a5,2
    800045cc:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    800045d0:	00813403          	ld	s0,8(sp)
    800045d4:	01010113          	addi	sp,sp,16
    800045d8:	00008067          	ret

00000000800045dc <_ZN5Riscv9endSystemEv>:
{
    800045dc:	ff010113          	addi	sp,sp,-16
    800045e0:	00113423          	sd	ra,8(sp)
    800045e4:	00813023          	sd	s0,0(sp)
    800045e8:	01010413          	addi	s0,sp,16
    disableInterrupts();
    800045ec:	00000097          	auipc	ra,0x0
    800045f0:	fd0080e7          	jalr	-48(ra) # 800045bc <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    800045f4:	00100793          	li	a5,1
    800045f8:	00010717          	auipc	a4,0x10
    800045fc:	94f70023          	sb	a5,-1728(a4) # 80013f38 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    80004600:	fffff097          	auipc	ra,0xfffff
    80004604:	494080e7          	jalr	1172(ra) # 80003a94 <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    80004608:	fe051ce3          	bnez	a0,80004600 <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    8000460c:	00008797          	auipc	a5,0x8
    80004610:	80c7b783          	ld	a5,-2036(a5) # 8000be18 <_GLOBAL_OFFSET_TABLE_+0x60>
    80004614:	0007b503          	ld	a0,0(a5)
    80004618:	fffff097          	auipc	ra,0xfffff
    8000461c:	428080e7          	jalr	1064(ra) # 80003a40 <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    80004620:	00007797          	auipc	a5,0x7
    80004624:	7c87b783          	ld	a5,1992(a5) # 8000bde8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80004628:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    8000462c:	00000097          	auipc	ra,0x0
    80004630:	f70080e7          	jalr	-144(ra) # 8000459c <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    80004634:	00007797          	auipc	a5,0x7
    80004638:	7e47b783          	ld	a5,2020(a5) # 8000be18 <_GLOBAL_OFFSET_TABLE_+0x60>
    8000463c:	0007b503          	ld	a0,0(a5)
    80004640:	ffffe097          	auipc	ra,0xffffe
    80004644:	330080e7          	jalr	816(ra) # 80002970 <_ZN3PCB10isFinishedEv>
    80004648:	00051863          	bnez	a0,80004658 <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch();
    8000464c:	ffffe097          	auipc	ra,0xffffe
    80004650:	d78080e7          	jalr	-648(ra) # 800023c4 <_Z15thread_dispatchv>
    while(!PCB::consolePCB->isFinished())
    80004654:	fe1ff06f          	j	80004634 <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    80004658:	00000097          	auipc	ra,0x0
    8000465c:	f64080e7          	jalr	-156(ra) # 800045bc <_ZN5Riscv17disableInterruptsEv>
}
    80004660:	00813083          	ld	ra,8(sp)
    80004664:	00013403          	ld	s0,0(sp)
    80004668:	01010113          	addi	sp,sp,16
    8000466c:	00008067          	ret

0000000080004670 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80004670:	ff010113          	addi	sp,sp,-16
    80004674:	00813423          	sd	s0,8(sp)
    80004678:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    8000467c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80004680:	10200073          	sret
}
    80004684:	00813403          	ld	s0,8(sp)
    80004688:	01010113          	addi	sp,sp,16
    8000468c:	00008067          	ret

0000000080004690 <_ZN5Riscv10kernelMainEv>:
    }
}

void Riscv::kernelMain()
{
    if(kernelMainCalled) return;
    80004690:	00010797          	auipc	a5,0x10
    80004694:	8a97c783          	lbu	a5,-1879(a5) # 80013f39 <_ZN5Riscv16kernelMainCalledE>
    80004698:	00078463          	beqz	a5,800046a0 <_ZN5Riscv10kernelMainEv+0x10>
    8000469c:	00008067          	ret
{
    800046a0:	ff010113          	addi	sp,sp,-16
    800046a4:	00113423          	sd	ra,8(sp)
    800046a8:	00813023          	sd	s0,0(sp)
    800046ac:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    800046b0:	00100793          	li	a5,1
    800046b4:	00010717          	auipc	a4,0x10
    800046b8:	88f702a3          	sb	a5,-1915(a4) # 80013f39 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    800046bc:	00000097          	auipc	ra,0x0
    800046c0:	df0080e7          	jalr	-528(ra) # 800044ac <_ZN5Riscv10initSystemEv>

    //testOS2();


    enableInterrupts();
    800046c4:	00000097          	auipc	ra,0x0
    800046c8:	ed8080e7          	jalr	-296(ra) # 8000459c <_ZN5Riscv16enableInterruptsEv>

    while(!PCB::userPCB->isFinished())
    800046cc:	00007797          	auipc	a5,0x7
    800046d0:	7547b783          	ld	a5,1876(a5) # 8000be20 <_GLOBAL_OFFSET_TABLE_+0x68>
    800046d4:	0007b503          	ld	a0,0(a5)
    800046d8:	ffffe097          	auipc	ra,0xffffe
    800046dc:	298080e7          	jalr	664(ra) # 80002970 <_ZN3PCB10isFinishedEv>
    800046e0:	00051863          	bnez	a0,800046f0 <_ZN5Riscv10kernelMainEv+0x60>
    {
        thread_dispatch();
    800046e4:	ffffe097          	auipc	ra,0xffffe
    800046e8:	ce0080e7          	jalr	-800(ra) # 800023c4 <_Z15thread_dispatchv>
    while(!PCB::userPCB->isFinished())
    800046ec:	fe1ff06f          	j	800046cc <_ZN5Riscv10kernelMainEv+0x3c>
    }

    endSystem();
    800046f0:	00000097          	auipc	ra,0x0
    800046f4:	eec080e7          	jalr	-276(ra) # 800045dc <_ZN5Riscv9endSystemEv>
}
    800046f8:	00813083          	ld	ra,8(sp)
    800046fc:	00013403          	ld	s0,0(sp)
    80004700:	01010113          	addi	sp,sp,16
    80004704:	00008067          	ret

0000000080004708 <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* )
{
    80004708:	ff010113          	addi	sp,sp,-16
    8000470c:	00113423          	sd	ra,8(sp)
    80004710:	00813023          	sd	s0,0(sp)
    80004714:	01010413          	addi	s0,sp,16
    userMain();
    80004718:	00002097          	auipc	ra,0x2
    8000471c:	ed8080e7          	jalr	-296(ra) # 800065f0 <_Z8userMainv>
}
    80004720:	00813083          	ld	ra,8(sp)
    80004724:	00013403          	ld	s0,0(sp)
    80004728:	01010113          	addi	sp,sp,16
    8000472c:	00008067          	ret

0000000080004730 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80004730:	ff010113          	addi	sp,sp,-16
    80004734:	00813423          	sd	s0,8(sp)
    80004738:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    8000473c:	00200793          	li	a5,2
    80004740:	1047b073          	csrc	sie,a5
}
    80004744:	00813403          	ld	s0,8(sp)
    80004748:	01010113          	addi	sp,sp,16
    8000474c:	00008067          	ret

0000000080004750 <_ZN5Riscv13w_a0_sscratchEv>:

void Riscv::w_a0_sscratch()
{
    80004750:	ff010113          	addi	sp,sp,-16
    80004754:	00813423          	sd	s0,8(sp)
    80004758:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    8000475c:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80004760:	00007717          	auipc	a4,0x7
    80004764:	6d073703          	ld	a4,1744(a4) # 8000be30 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004768:	00073703          	ld	a4,0(a4)
    8000476c:	01073703          	ld	a4,16(a4)
    80004770:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80004774:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80004778:	00078593          	mv	a1,a5
}
    8000477c:	00813403          	ld	s0,8(sp)
    80004780:	01010113          	addi	sp,sp,16
    80004784:	00008067          	ret

0000000080004788 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80004788:	ff010113          	addi	sp,sp,-16
    8000478c:	00813423          	sd	s0,8(sp)
    80004790:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80004794:	00007797          	auipc	a5,0x7
    80004798:	69c7b783          	ld	a5,1692(a5) # 8000be30 <_GLOBAL_OFFSET_TABLE_+0x78>
    8000479c:	0007b783          	ld	a5,0(a5)
    800047a0:	0007c783          	lbu	a5,0(a5)
    800047a4:	00078c63          	beqz	a5,800047bc <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800047a8:	10000793          	li	a5,256
    800047ac:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    800047b0:	00813403          	ld	s0,8(sp)
    800047b4:	01010113          	addi	sp,sp,16
    800047b8:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800047bc:	10000793          	li	a5,256
    800047c0:	1007b073          	csrc	sstatus,a5
    800047c4:	fedff06f          	j	800047b0 <_ZN5Riscv14changePrivModeEv+0x28>

00000000800047c8 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    800047c8:	f9010113          	addi	sp,sp,-112
    800047cc:	06113423          	sd	ra,104(sp)
    800047d0:	06813023          	sd	s0,96(sp)
    800047d4:	04913c23          	sd	s1,88(sp)
    800047d8:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    800047dc:	00070713          	mv	a4,a4
    800047e0:	00007797          	auipc	a5,0x7
    800047e4:	6707b783          	ld	a5,1648(a5) # 8000be50 <_GLOBAL_OFFSET_TABLE_+0x98>
    800047e8:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    800047ec:	00007797          	auipc	a5,0x7
    800047f0:	6447b783          	ld	a5,1604(a5) # 8000be30 <_GLOBAL_OFFSET_TABLE_+0x78>
    800047f4:	0007b783          	ld	a5,0(a5)
    800047f8:	14002773          	csrr	a4,sscratch
    800047fc:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80004800:	142027f3          	csrr	a5,scause
    80004804:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80004808:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    8000480c:	00900713          	li	a4,9
    80004810:	02f76e63          	bltu	a4,a5,8000484c <_ZN5Riscv20handleSupervisorTrapEv+0x84>
    80004814:	00800713          	li	a4,8
    80004818:	12e7f463          	bgeu	a5,a4,80004940 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    8000481c:	00500713          	li	a4,5
    80004820:	10e78a63          	beq	a5,a4,80004934 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    80004824:	00700713          	li	a4,7
    80004828:	00e79863          	bne	a5,a4,80004838 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            PCB::threadExitHandler();
    8000482c:	ffffe097          	auipc	ra,0xffffe
    80004830:	168080e7          	jalr	360(ra) # 80002994 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004834:	0dc0006f          	j	80004910 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    80004838:	00200713          	li	a4,2
    8000483c:	0ce79a63          	bne	a5,a4,80004910 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            PCB::threadExitHandler();
    80004840:	ffffe097          	auipc	ra,0xffffe
    80004844:	154080e7          	jalr	340(ra) # 80002994 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004848:	0c80006f          	j	80004910 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    8000484c:	fff00713          	li	a4,-1
    80004850:	03f71713          	slli	a4,a4,0x3f
    80004854:	00170713          	addi	a4,a4,1
    80004858:	02e78863          	beq	a5,a4,80004888 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
    8000485c:	fff00713          	li	a4,-1
    80004860:	03f71713          	slli	a4,a4,0x3f
    80004864:	00970713          	addi	a4,a4,9
    80004868:	0ae79463          	bne	a5,a4,80004910 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            KConsole::getCharactersFromConsole();
    8000486c:	fffff097          	auipc	ra,0xfffff
    80004870:	b88080e7          	jalr	-1144(ra) # 800033f4 <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    80004874:	00003097          	auipc	ra,0x3
    80004878:	bc0080e7          	jalr	-1088(ra) # 80007434 <plic_claim>
    8000487c:	00003097          	auipc	ra,0x3
    80004880:	bf0080e7          	jalr	-1040(ra) # 8000746c <plic_complete>
            break;
    80004884:	08c0006f          	j	80004910 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80004888:	141027f3          	csrr	a5,sepc
    8000488c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80004890:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80004894:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80004898:	100027f3          	csrr	a5,sstatus
    8000489c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800048a0:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    800048a4:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    800048a8:	00200793          	li	a5,2
    800048ac:	1447b073          	csrc	sip,a5
            totalTime++;
    800048b0:	0000f717          	auipc	a4,0xf
    800048b4:	67870713          	addi	a4,a4,1656 # 80013f28 <_ZN5Riscv8pcbCacheE>
    800048b8:	01873783          	ld	a5,24(a4)
    800048bc:	00178793          	addi	a5,a5,1
    800048c0:	00f73c23          	sd	a5,24(a4)
            PCB::timeSliceCounter++;
    800048c4:	00007497          	auipc	s1,0x7
    800048c8:	5344b483          	ld	s1,1332(s1) # 8000bdf8 <_GLOBAL_OFFSET_TABLE_+0x40>
    800048cc:	0004b783          	ld	a5,0(s1)
    800048d0:	00178793          	addi	a5,a5,1
    800048d4:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    800048d8:	fffff097          	auipc	ra,0xfffff
    800048dc:	058080e7          	jalr	88(ra) # 80003930 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    800048e0:	00007797          	auipc	a5,0x7
    800048e4:	5507b783          	ld	a5,1360(a5) # 8000be30 <_GLOBAL_OFFSET_TABLE_+0x78>
    800048e8:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    800048ec:	0187b783          	ld	a5,24(a5)
    800048f0:	0004b703          	ld	a4,0(s1)
    800048f4:	02f77863          	bgeu	a4,a5,80004924 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
            Riscv::w_sstatus(sstatus);
    800048f8:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800048fc:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80004900:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80004904:	14179073          	csrw	sepc,a5
            changePrivMode();
    80004908:	00000097          	auipc	ra,0x0
    8000490c:	e80080e7          	jalr	-384(ra) # 80004788 <_ZN5Riscv14changePrivModeEv>
}
    80004910:	06813083          	ld	ra,104(sp)
    80004914:	06013403          	ld	s0,96(sp)
    80004918:	05813483          	ld	s1,88(sp)
    8000491c:	07010113          	addi	sp,sp,112
    80004920:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80004924:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80004928:	ffffe097          	auipc	ra,0xffffe
    8000492c:	dfc080e7          	jalr	-516(ra) # 80002724 <_ZN3PCB8dispatchEv>
    80004930:	fc9ff06f          	j	800048f8 <_ZN5Riscv20handleSupervisorTrapEv+0x130>
            PCB::threadExitHandler();
    80004934:	ffffe097          	auipc	ra,0xffffe
    80004938:	060080e7          	jalr	96(ra) # 80002994 <_ZN3PCB17threadExitHandlerEv>
            break;
    8000493c:	fd5ff06f          	j	80004910 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80004940:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80004944:	14102773          	csrr	a4,sepc
    80004948:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    8000494c:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80004950:	00470713          	addi	a4,a4,4
    80004954:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80004958:	10002773          	csrr	a4,sstatus
    8000495c:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80004960:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80004964:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80004968:	04300713          	li	a4,67
    8000496c:	02f76463          	bltu	a4,a5,80004994 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    80004970:	00279793          	slli	a5,a5,0x2
    80004974:	00005717          	auipc	a4,0x5
    80004978:	a4070713          	addi	a4,a4,-1472 # 800093b4 <CONSOLE_STATUS+0x3a4>
    8000497c:	00e787b3          	add	a5,a5,a4
    80004980:	0007a783          	lw	a5,0(a5)
    80004984:	00e787b3          	add	a5,a5,a4
    80004988:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    8000498c:	00000097          	auipc	ra,0x0
    80004990:	4f0080e7          	jalr	1264(ra) # 80004e7c <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80004994:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80004998:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    8000499c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800049a0:	14179073          	csrw	sepc,a5
            changePrivMode();
    800049a4:	00000097          	auipc	ra,0x0
    800049a8:	de4080e7          	jalr	-540(ra) # 80004788 <_ZN5Riscv14changePrivModeEv>
}
    800049ac:	f65ff06f          	j	80004910 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                    MemoryAllocator::memFreeHandler();
    800049b0:	00000097          	auipc	ra,0x0
    800049b4:	53c080e7          	jalr	1340(ra) # 80004eec <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    800049b8:	fddff06f          	j	80004994 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadMakePCBHandler();
    800049bc:	ffffe097          	auipc	ra,0xffffe
    800049c0:	1a0080e7          	jalr	416(ra) # 80002b5c <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    800049c4:	fd1ff06f          	j	80004994 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadCreateHandler();
    800049c8:	ffffe097          	auipc	ra,0xffffe
    800049cc:	0ac080e7          	jalr	172(ra) # 80002a74 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    800049d0:	fc5ff06f          	j	80004994 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadStartHandler();
    800049d4:	ffffe097          	auipc	ra,0xffffe
    800049d8:	144080e7          	jalr	324(ra) # 80002b18 <_ZN3PCB18threadStartHandlerEv>
                    break;
    800049dc:	fb9ff06f          	j	80004994 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadDispatchHandler();
    800049e0:	ffffe097          	auipc	ra,0xffffe
    800049e4:	000080e7          	jalr	ra # 800029e0 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    800049e8:	fadff06f          	j	80004994 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadExitHandler();
    800049ec:	ffffe097          	auipc	ra,0xffffe
    800049f0:	fa8080e7          	jalr	-88(ra) # 80002994 <_ZN3PCB17threadExitHandlerEv>
                    break;
    800049f4:	fa1ff06f          	j	80004994 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadSleepHandler();
    800049f8:	ffffe097          	auipc	ra,0xffffe
    800049fc:	018080e7          	jalr	24(ra) # 80002a10 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80004a00:	f95ff06f          	j	80004994 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                     PCB::threadDelPCBHandler();
    80004a04:	ffffe097          	auipc	ra,0xffffe
    80004a08:	1f0080e7          	jalr	496(ra) # 80002bf4 <_ZN3PCB19threadDelPCBHandlerEv>
                     break;
    80004a0c:	f89ff06f          	j	80004994 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semOpenHandler();
    80004a10:	00001097          	auipc	ra,0x1
    80004a14:	cc4080e7          	jalr	-828(ra) # 800056d4 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80004a18:	f7dff06f          	j	80004994 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semWaitHandler();
    80004a1c:	00001097          	auipc	ra,0x1
    80004a20:	d6c080e7          	jalr	-660(ra) # 80005788 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80004a24:	f71ff06f          	j	80004994 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semSignalHandler();
    80004a28:	00001097          	auipc	ra,0x1
    80004a2c:	db4080e7          	jalr	-588(ra) # 800057dc <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80004a30:	f65ff06f          	j	80004994 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semCloseHandler();
    80004a34:	00001097          	auipc	ra,0x1
    80004a38:	dec080e7          	jalr	-532(ra) # 80005820 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80004a3c:	f59ff06f          	j	80004994 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getcHandler();
    80004a40:	fffff097          	auipc	ra,0xfffff
    80004a44:	bb8080e7          	jalr	-1096(ra) # 800035f8 <_ZN8KConsole11getcHandlerEv>
                    break;
    80004a48:	f4dff06f          	j	80004994 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::putcHandler();
    80004a4c:	fffff097          	auipc	ra,0xfffff
    80004a50:	b7c080e7          	jalr	-1156(ra) # 800035c8 <_ZN8KConsole11putcHandlerEv>
                    break;
    80004a54:	f41ff06f          	j	80004994 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getCharHandler();
    80004a58:	fffff097          	auipc	ra,0xfffff
    80004a5c:	cfc080e7          	jalr	-772(ra) # 80003754 <_ZN8KConsole14getCharHandlerEv>
                    break;
    80004a60:	f35ff06f          	j	80004994 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>

0000000080004a64 <_ZN15MemoryAllocator10initMemoryEPv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory(void* startAddr)
{
    80004a64:	ff010113          	addi	sp,sp,-16
    80004a68:	00813423          	sd	s0,8(sp)
    80004a6c:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80004a70:	0000f717          	auipc	a4,0xf
    80004a74:	4d872703          	lw	a4,1240(a4) # 80013f48 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004a78:	00100793          	li	a5,1
    80004a7c:	02f70c63          	beq	a4,a5,80004ab4 <_ZN15MemoryAllocator10initMemoryEPv+0x50>
        return;
    memoryInitiliaized = 1;
    80004a80:	0000f797          	auipc	a5,0xf
    80004a84:	4c878793          	addi	a5,a5,1224 # 80013f48 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004a88:	00100713          	li	a4,1
    80004a8c:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80004a90:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)startAddr;
    80004a94:	00a7b823          	sd	a0,16(a5)
    headFree->next = 0;
    80004a98:	00053423          	sd	zero,8(a0)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)startAddr  + 1 - sizeof(BlockHeader));
    80004a9c:	00007797          	auipc	a5,0x7
    80004aa0:	39c7b783          	ld	a5,924(a5) # 8000be38 <_GLOBAL_OFFSET_TABLE_+0x80>
    80004aa4:	0007b783          	ld	a5,0(a5)
    80004aa8:	40a787b3          	sub	a5,a5,a0
    80004aac:	ff178793          	addi	a5,a5,-15
    80004ab0:	00f53023          	sd	a5,0(a0)
}
    80004ab4:	00813403          	ld	s0,8(sp)
    80004ab8:	01010113          	addi	sp,sp,16
    80004abc:	00008067          	ret

0000000080004ac0 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    80004ac0:	ff010113          	addi	sp,sp,-16
    80004ac4:	00813423          	sd	s0,8(sp)
    80004ac8:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004acc:	0000f797          	auipc	a5,0xf
    80004ad0:	47c7a783          	lw	a5,1148(a5) # 80013f48 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004ad4:	02078a63          	beqz	a5,80004b08 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        return;
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004ad8:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    80004adc:	00b53023          	sd	a1,0(a0)
    if(headAllocated == 0)
    80004ae0:	0000f797          	auipc	a5,0xf
    80004ae4:	4707b783          	ld	a5,1136(a5) # 80013f50 <_ZN15MemoryAllocator13headAllocatedE>
    80004ae8:	02078663          	beqz	a5,80004b14 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x54>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    80004aec:	00007717          	auipc	a4,0x7
    80004af0:	34c73703          	ld	a4,844(a4) # 8000be38 <_GLOBAL_OFFSET_TABLE_+0x80>
    80004af4:	00073703          	ld	a4,0(a4)
    80004af8:	02c76463          	bltu	a4,a2,80004b20 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    80004afc:	00863783          	ld	a5,8(a2)
    80004b00:	00f53423          	sd	a5,8(a0)
        allFrag->next = newAllocated;
    80004b04:	00a63423          	sd	a0,8(a2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    80004b08:	00813403          	ld	s0,8(sp)
    80004b0c:	01010113          	addi	sp,sp,16
    80004b10:	00008067          	ret
        headAllocated = newAllocated;
    80004b14:	0000f797          	auipc	a5,0xf
    80004b18:	42a7be23          	sd	a0,1084(a5) # 80013f50 <_ZN15MemoryAllocator13headAllocatedE>
    80004b1c:	fedff06f          	j	80004b08 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        newAllocated->next = headAllocated;
    80004b20:	00f53423          	sd	a5,8(a0)
        headAllocated = newAllocated;
    80004b24:	0000f797          	auipc	a5,0xf
    80004b28:	42a7b623          	sd	a0,1068(a5) # 80013f50 <_ZN15MemoryAllocator13headAllocatedE>
    80004b2c:	fddff06f          	j	80004b08 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>

0000000080004b30 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80004b30:	ff010113          	addi	sp,sp,-16
    80004b34:	00813423          	sd	s0,8(sp)
    80004b38:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004b3c:	0000f797          	auipc	a5,0xf
    80004b40:	40c7a783          	lw	a5,1036(a5) # 80013f48 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004b44:	02078c63          	beqz	a5,80004b7c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80004b48:	0000f797          	auipc	a5,0xf
    80004b4c:	4087b783          	ld	a5,1032(a5) # 80013f50 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004b50:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    80004b54:	00b53023          	sd	a1,0(a0)
    BlockHeader* prev = 0;
    80004b58:	00000713          	li	a4,0
    while(curr != 0)
    80004b5c:	00078c63          	beqz	a5,80004b74 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80004b60:	00f56863          	bltu	a0,a5,80004b70 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x40>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004b64:	00078713          	mv	a4,a5
        curr = curr->next;
    80004b68:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004b6c:	ff1ff06f          	j	80004b5c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x2c>
            newAllocated->next = curr;
    80004b70:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    80004b74:	00070a63          	beqz	a4,80004b88 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x58>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80004b78:	00a73423          	sd	a0,8(a4)
}
    80004b7c:	00813403          	ld	s0,8(sp)
    80004b80:	01010113          	addi	sp,sp,16
    80004b84:	00008067          	ret
        headAllocated = newAllocated;
    80004b88:	0000f797          	auipc	a5,0xf
    80004b8c:	3ca7b423          	sd	a0,968(a5) # 80013f50 <_ZN15MemoryAllocator13headAllocatedE>
    80004b90:	fedff06f          	j	80004b7c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>

0000000080004b94 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    80004b94:	0000f797          	auipc	a5,0xf
    80004b98:	3b47a783          	lw	a5,948(a5) # 80013f48 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004b9c:	0e078e63          	beqz	a5,80004c98 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x104>
{
    80004ba0:	fe010113          	addi	sp,sp,-32
    80004ba4:	00113c23          	sd	ra,24(sp)
    80004ba8:	00813823          	sd	s0,16(sp)
    80004bac:	00913423          	sd	s1,8(sp)
    80004bb0:	02010413          	addi	s0,sp,32
    80004bb4:	00050593          	mv	a1,a0
        return nullptr;
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004bb8:	0000f497          	auipc	s1,0xf
    80004bbc:	3a04b483          	ld	s1,928(s1) # 80013f58 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80004bc0:	00000713          	li	a4,0
    while(curr != 0)
    80004bc4:	0a048e63          	beqz	s1,80004c80 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xec>
    {
        if(curr->size >= size)
    80004bc8:	0004b783          	ld	a5,0(s1)
    80004bcc:	00b7f863          	bgeu	a5,a1,80004bdc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80004bd0:	00048713          	mv	a4,s1
        curr = curr->next;
    80004bd4:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004bd8:	fedff06f          	j	80004bc4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80004bdc:	01058693          	addi	a3,a1,16
    80004be0:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    80004be4:	01078613          	addi	a2,a5,16
    80004be8:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    80004bec:	00007517          	auipc	a0,0x7
    80004bf0:	24c53503          	ld	a0,588(a0) # 8000be38 <_GLOBAL_OFFSET_TABLE_+0x80>
    80004bf4:	00053503          	ld	a0,0(a0)
    80004bf8:	06d56063          	bltu	a0,a3,80004c58 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    80004bfc:	40b78533          	sub	a0,a5,a1
                if(size2 > sizeof(BlockHeader))
    80004c00:	01000813          	li	a6,16
    80004c04:	02a87663          	bgeu	a6,a0,80004c30 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    80004c08:	0084b783          	ld	a5,8(s1)
    80004c0c:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80004c10:	ff050513          	addi	a0,a0,-16
    80004c14:	00a6b023          	sd	a0,0(a3)
                    if (prev != 0)
    80004c18:	00070663          	beqz	a4,80004c24 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    80004c1c:	00d73423          	sd	a3,8(a4)
    80004c20:	0400006f          	j	80004c60 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    80004c24:	0000f797          	auipc	a5,0xf
    80004c28:	32d7ba23          	sd	a3,820(a5) # 80013f58 <_ZN15MemoryAllocator8headFreeE>
    80004c2c:	0340006f          	j	80004c60 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    80004c30:	00070a63          	beqz	a4,80004c44 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    80004c34:	0084b683          	ld	a3,8(s1)
    80004c38:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    80004c3c:	00078593          	mv	a1,a5
    80004c40:	0200006f          	j	80004c60 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    80004c44:	0084b703          	ld	a4,8(s1)
    80004c48:	0000f697          	auipc	a3,0xf
    80004c4c:	30e6b823          	sd	a4,784(a3) # 80013f58 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    80004c50:	00078593          	mv	a1,a5
    80004c54:	00c0006f          	j	80004c60 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80004c58:	00070e63          	beqz	a4,80004c74 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
                    prev->next = 0;
    80004c5c:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    80004c60:	00048513          	mv	a0,s1
    80004c64:	00000097          	auipc	ra,0x0
    80004c68:	e5c080e7          	jalr	-420(ra) # 80004ac0 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80004c6c:	01048513          	addi	a0,s1,16
            break;
    80004c70:	0140006f          	j	80004c84 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
                    headFree = 0;
    80004c74:	0000f797          	auipc	a5,0xf
    80004c78:	2e07b223          	sd	zero,740(a5) # 80013f58 <_ZN15MemoryAllocator8headFreeE>
    80004c7c:	fe5ff06f          	j	80004c60 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    80004c80:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004c84:	01813083          	ld	ra,24(sp)
    80004c88:	01013403          	ld	s0,16(sp)
    80004c8c:	00813483          	ld	s1,8(sp)
    80004c90:	02010113          	addi	sp,sp,32
    80004c94:	00008067          	ret
        return nullptr;
    80004c98:	00000513          	li	a0,0
}
    80004c9c:	00008067          	ret

0000000080004ca0 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80004ca0:	ff010113          	addi	sp,sp,-16
    80004ca4:	00113423          	sd	ra,8(sp)
    80004ca8:	00813023          	sd	s0,0(sp)
    80004cac:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80004cb0:	00000097          	auipc	ra,0x0
    80004cb4:	ee4080e7          	jalr	-284(ra) # 80004b94 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004cb8:	00813083          	ld	ra,8(sp)
    80004cbc:	00013403          	ld	s0,0(sp)
    80004cc0:	01010113          	addi	sp,sp,16
    80004cc4:	00008067          	ret

0000000080004cc8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80004cc8:	ff010113          	addi	sp,sp,-16
    80004ccc:	00813423          	sd	s0,8(sp)
    80004cd0:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004cd4:	0000f797          	auipc	a5,0xf
    80004cd8:	2747a783          	lw	a5,628(a5) # 80013f48 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004cdc:	06078263          	beqz	a5,80004d40 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004ce0:	0000f797          	auipc	a5,0xf
    80004ce4:	2787b783          	ld	a5,632(a5) # 80013f58 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80004ce8:	00b53023          	sd	a1,0(a0)
    newSegment->next = 0;
    80004cec:	00053423          	sd	zero,8(a0)
    BlockHeader* prev = 0;
    80004cf0:	00000713          	li	a4,0
    while(curr != 0)
    80004cf4:	00078c63          	beqz	a5,80004d0c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80004cf8:	00f56863          	bltu	a0,a5,80004d08 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x40>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80004cfc:	00078713          	mv	a4,a5
        curr = curr->next;
    80004d00:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004d04:	ff1ff06f          	j	80004cf4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x2c>
            newSegment->next = curr;
    80004d08:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    80004d0c:	04070063          	beqz	a4,80004d4c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x84>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80004d10:	00a73423          	sd	a0,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80004d14:	00853783          	ld	a5,8(a0)
    80004d18:	00078a63          	beqz	a5,80004d2c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
    80004d1c:	00053603          	ld	a2,0(a0)
    80004d20:	01060693          	addi	a3,a2,16
    80004d24:	00d506b3          	add	a3,a0,a3
    80004d28:	02d78863          	beq	a5,a3,80004d58 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x90>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80004d2c:	00070a63          	beqz	a4,80004d40 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
    80004d30:	00073683          	ld	a3,0(a4)
    80004d34:	01068793          	addi	a5,a3,16
    80004d38:	00f707b3          	add	a5,a4,a5
    80004d3c:	02a78c63          	beq	a5,a0,80004d74 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80004d40:	00813403          	ld	s0,8(sp)
    80004d44:	01010113          	addi	sp,sp,16
    80004d48:	00008067          	ret
        headFree = newSegment;
    80004d4c:	0000f797          	auipc	a5,0xf
    80004d50:	20a7b623          	sd	a0,524(a5) # 80013f58 <_ZN15MemoryAllocator8headFreeE>
    80004d54:	fc1ff06f          	j	80004d14 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x4c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004d58:	0007b683          	ld	a3,0(a5)
    80004d5c:	00d60633          	add	a2,a2,a3
    80004d60:	01060613          	addi	a2,a2,16
    80004d64:	00c53023          	sd	a2,0(a0)
        newSegment->next = newSegment->next->next;
    80004d68:	0087b783          	ld	a5,8(a5)
    80004d6c:	00f53423          	sd	a5,8(a0)
    80004d70:	fbdff06f          	j	80004d2c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80004d74:	00053783          	ld	a5,0(a0)
    80004d78:	00f686b3          	add	a3,a3,a5
    80004d7c:	01068693          	addi	a3,a3,16
    80004d80:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004d84:	00853783          	ld	a5,8(a0)
    80004d88:	00f73423          	sd	a5,8(a4)
    80004d8c:	fb5ff06f          	j	80004d40 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>

0000000080004d90 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    80004d90:	0000f797          	auipc	a5,0xf
    80004d94:	1b87a783          	lw	a5,440(a5) # 80013f48 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004d98:	08078263          	beqz	a5,80004e1c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>
{
    80004d9c:	fe010113          	addi	sp,sp,-32
    80004da0:	00113c23          	sd	ra,24(sp)
    80004da4:	00813823          	sd	s0,16(sp)
    80004da8:	00913423          	sd	s1,8(sp)
    80004dac:	02010413          	addi	s0,sp,32
        return 1;
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80004db0:	0000f497          	auipc	s1,0xf
    80004db4:	1a04b483          	ld	s1,416(s1) # 80013f50 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80004db8:	00000713          	li	a4,0
    while(curr != 0)
    80004dbc:	02048a63          	beqz	s1,80004df0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x60>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80004dc0:	01048793          	addi	a5,s1,16
    80004dc4:	00a78863          	beq	a5,a0,80004dd4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80004dc8:	00048713          	mv	a4,s1
        curr = curr->next;
    80004dcc:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004dd0:	fedff06f          	j	80004dbc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x2c>
            if(prev != 0)
    80004dd4:	02070c63          	beqz	a4,80004e0c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x7c>
                prev->next = curr->next;
    80004dd8:	0084b783          	ld	a5,8(s1)
    80004ddc:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80004de0:	0004b583          	ld	a1,0(s1)
    80004de4:	00048513          	mv	a0,s1
    80004de8:	00000097          	auipc	ra,0x0
    80004dec:	ee0080e7          	jalr	-288(ra) # 80004cc8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004df0:	02048a63          	beqz	s1,80004e24 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004df4:	00000513          	li	a0,0
    else
        return 1;
}
    80004df8:	01813083          	ld	ra,24(sp)
    80004dfc:	01013403          	ld	s0,16(sp)
    80004e00:	00813483          	ld	s1,8(sp)
    80004e04:	02010113          	addi	sp,sp,32
    80004e08:	00008067          	ret
                headAllocated = curr->next;
    80004e0c:	0084b783          	ld	a5,8(s1)
    80004e10:	0000f717          	auipc	a4,0xf
    80004e14:	14f73023          	sd	a5,320(a4) # 80013f50 <_ZN15MemoryAllocator13headAllocatedE>
    80004e18:	fc9ff06f          	j	80004de0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x50>
        return 1;
    80004e1c:	00100513          	li	a0,1
}
    80004e20:	00008067          	ret
        return 1;
    80004e24:	00100513          	li	a0,1
    80004e28:	fd1ff06f          	j	80004df8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x68>

0000000080004e2c <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004e2c:	ff010113          	addi	sp,sp,-16
    80004e30:	00113423          	sd	ra,8(sp)
    80004e34:	00813023          	sd	s0,0(sp)
    80004e38:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004e3c:	00000097          	auipc	ra,0x0
    80004e40:	f54080e7          	jalr	-172(ra) # 80004d90 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004e44:	00813083          	ld	ra,8(sp)
    80004e48:	00013403          	ld	s0,0(sp)
    80004e4c:	01010113          	addi	sp,sp,16
    80004e50:	00008067          	ret

0000000080004e54 <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80004e54:	ff010113          	addi	sp,sp,-16
    80004e58:	00113423          	sd	ra,8(sp)
    80004e5c:	00813023          	sd	s0,0(sp)
    80004e60:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004e64:	00000097          	auipc	ra,0x0
    80004e68:	e3c080e7          	jalr	-452(ra) # 80004ca0 <_ZN15MemoryAllocator9mem_allocEm>
}
    80004e6c:	00813083          	ld	ra,8(sp)
    80004e70:	00013403          	ld	s0,0(sp)
    80004e74:	01010113          	addi	sp,sp,16
    80004e78:	00008067          	ret

0000000080004e7c <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004e7c:	ff010113          	addi	sp,sp,-16
    80004e80:	00113423          	sd	ra,8(sp)
    80004e84:	00813023          	sd	s0,0(sp)
    80004e88:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004e8c:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004e90:	00651513          	slli	a0,a0,0x6
    80004e94:	00000097          	auipc	ra,0x0
    80004e98:	fc0080e7          	jalr	-64(ra) # 80004e54 <_ZN15MemoryAllocator7kmallocEm>
    if(allocatedAddr == nullptr)
    80004e9c:	02050063          	beqz	a0,80004ebc <_ZN15MemoryAllocator15memAllocHandlerEv+0x40>
        __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004ea0:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004ea4:	00000097          	auipc	ra,0x0
    80004ea8:	8ac080e7          	jalr	-1876(ra) # 80004750 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004eac:	00813083          	ld	ra,8(sp)
    80004eb0:	00013403          	ld	s0,0(sp)
    80004eb4:	01010113          	addi	sp,sp,16
    80004eb8:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80004ebc:	00000513          	li	a0,0
    80004ec0:	fe5ff06f          	j	80004ea4 <_ZN15MemoryAllocator15memAllocHandlerEv+0x28>

0000000080004ec4 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    80004ec4:	ff010113          	addi	sp,sp,-16
    80004ec8:	00113423          	sd	ra,8(sp)
    80004ecc:	00813023          	sd	s0,0(sp)
    80004ed0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80004ed4:	00000097          	auipc	ra,0x0
    80004ed8:	f58080e7          	jalr	-168(ra) # 80004e2c <_ZN15MemoryAllocator8mem_freeEPv>
    80004edc:	00813083          	ld	ra,8(sp)
    80004ee0:	00013403          	ld	s0,0(sp)
    80004ee4:	01010113          	addi	sp,sp,16
    80004ee8:	00008067          	ret

0000000080004eec <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004eec:	ff010113          	addi	sp,sp,-16
    80004ef0:	00113423          	sd	ra,8(sp)
    80004ef4:	00813023          	sd	s0,0(sp)
    80004ef8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004efc:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004f00:	00000097          	auipc	ra,0x0
    80004f04:	fc4080e7          	jalr	-60(ra) # 80004ec4 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004f08:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004f0c:	00000097          	auipc	ra,0x0
    80004f10:	844080e7          	jalr	-1980(ra) # 80004750 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004f14:	00813083          	ld	ra,8(sp)
    80004f18:	00013403          	ld	s0,0(sp)
    80004f1c:	01010113          	addi	sp,sp,16
    80004f20:	00008067          	ret

0000000080004f24 <_Z12slabInitTestv>:
#include "../h/slabTests.hpp"
#include "../h/KConsole.hpp"

void slabInitTest()
{
    80004f24:	ff010113          	addi	sp,sp,-16
    80004f28:	00113423          	sd	ra,8(sp)
    80004f2c:	00813023          	sd	s0,0(sp)
    80004f30:	01010413          	addi	s0,sp,16
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004f34:	00f00593          	li	a1,15
    80004f38:	00007797          	auipc	a5,0x7
    80004f3c:	e987b783          	ld	a5,-360(a5) # 8000bdd0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004f40:	0007b503          	ld	a0,0(a5)
    80004f44:	ffffd097          	auipc	ra,0xffffd
    80004f48:	c40080e7          	jalr	-960(ra) # 80001b84 <_Z9kmem_initPvi>
}
    80004f4c:	00813083          	ld	ra,8(sp)
    80004f50:	00013403          	ld	s0,0(sp)
    80004f54:	01010113          	addi	sp,sp,16
    80004f58:	00008067          	ret

0000000080004f5c <_Z19slabCacheCreateTestv>:

void slabCacheCreateTest()
{
    80004f5c:	fe010113          	addi	sp,sp,-32
    80004f60:	00113c23          	sd	ra,24(sp)
    80004f64:	00813823          	sd	s0,16(sp)
    80004f68:	00913423          	sd	s1,8(sp)
    80004f6c:	01213023          	sd	s2,0(sp)
    80004f70:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004f74:	00f00593          	li	a1,15
    80004f78:	00007797          	auipc	a5,0x7
    80004f7c:	e587b783          	ld	a5,-424(a5) # 8000bdd0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004f80:	0007b503          	ld	a0,0(a5)
    80004f84:	ffffd097          	auipc	ra,0xffffd
    80004f88:	c00080e7          	jalr	-1024(ra) # 80001b84 <_Z9kmem_initPvi>
    kmem_cache_t* cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004f8c:	00000693          	li	a3,0
    80004f90:	00000613          	li	a2,0
    80004f94:	00a00593          	li	a1,10
    80004f98:	00004517          	auipc	a0,0x4
    80004f9c:	53050513          	addi	a0,a0,1328 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80004fa0:	ffffd097          	auipc	ra,0xffffd
    80004fa4:	d54080e7          	jalr	-684(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004fa8:	00050493          	mv	s1,a0
    kmem_cache_t* cache2 = kmem_cache_create("Cache test 2", 10, nullptr,nullptr);
    80004fac:	00000693          	li	a3,0
    80004fb0:	00000613          	li	a2,0
    80004fb4:	00a00593          	li	a1,10
    80004fb8:	00004517          	auipc	a0,0x4
    80004fbc:	52050513          	addi	a0,a0,1312 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80004fc0:	ffffd097          	auipc	ra,0xffffd
    80004fc4:	d34080e7          	jalr	-716(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004fc8:	00050913          	mv	s2,a0
    kmem_cache_t* cache3 = kmem_cache_create("Cache test 3", 10, nullptr,nullptr);
    80004fcc:	00000693          	li	a3,0
    80004fd0:	00000613          	li	a2,0
    80004fd4:	00a00593          	li	a1,10
    80004fd8:	00004517          	auipc	a0,0x4
    80004fdc:	51050513          	addi	a0,a0,1296 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80004fe0:	ffffd097          	auipc	ra,0xffffd
    80004fe4:	d14080e7          	jalr	-748(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    if(cache && cache2 && cache3)
    80004fe8:	00048a63          	beqz	s1,80004ffc <_Z19slabCacheCreateTestv+0xa0>
    80004fec:	00090863          	beqz	s2,80004ffc <_Z19slabCacheCreateTestv+0xa0>
    80004ff0:	00050663          	beqz	a0,80004ffc <_Z19slabCacheCreateTestv+0xa0>
        printSlabAllocatorInfo();
    80004ff4:	ffffd097          	auipc	ra,0xffffd
    80004ff8:	f50080e7          	jalr	-176(ra) # 80001f44 <_Z22printSlabAllocatorInfov>
}
    80004ffc:	01813083          	ld	ra,24(sp)
    80005000:	01013403          	ld	s0,16(sp)
    80005004:	00813483          	ld	s1,8(sp)
    80005008:	00013903          	ld	s2,0(sp)
    8000500c:	02010113          	addi	sp,sp,32
    80005010:	00008067          	ret

0000000080005014 <_Z20slabCacheCreateTest2v>:

void slabCacheCreateTest2()
{
    80005014:	fe010113          	addi	sp,sp,-32
    80005018:	00113c23          	sd	ra,24(sp)
    8000501c:	00813823          	sd	s0,16(sp)
    80005020:	00913423          	sd	s1,8(sp)
    80005024:	01213023          	sd	s2,0(sp)
    80005028:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    8000502c:	00f00593          	li	a1,15
    80005030:	00007797          	auipc	a5,0x7
    80005034:	da07b783          	ld	a5,-608(a5) # 8000bdd0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80005038:	0007b503          	ld	a0,0(a5)
    8000503c:	ffffd097          	auipc	ra,0xffffd
    80005040:	b48080e7          	jalr	-1208(ra) # 80001b84 <_Z9kmem_initPvi>
    kmem_cache_t * cache = nullptr;
    for(int i = 1;i<=68;i++)
    80005044:	00100493          	li	s1,1
    kmem_cache_t * cache = nullptr;
    80005048:	00000913          	li	s2,0
    for(int i = 1;i<=68;i++)
    8000504c:	04400793          	li	a5,68
    80005050:	0297c663          	blt	a5,s1,8000507c <_Z20slabCacheCreateTest2v+0x68>
    {
        cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80005054:	00000693          	li	a3,0
    80005058:	00000613          	li	a2,0
    8000505c:	00a00593          	li	a1,10
    80005060:	00004517          	auipc	a0,0x4
    80005064:	46850513          	addi	a0,a0,1128 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80005068:	ffffd097          	auipc	ra,0xffffd
    8000506c:	c8c080e7          	jalr	-884(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80005070:	00050913          	mv	s2,a0
    for(int i = 1;i<=68;i++)
    80005074:	0014849b          	addiw	s1,s1,1
    80005078:	fd5ff06f          	j	8000504c <_Z20slabCacheCreateTest2v+0x38>
    }
    printSlabAllocatorInfo();
    8000507c:	ffffd097          	auipc	ra,0xffffd
    80005080:	ec8080e7          	jalr	-312(ra) # 80001f44 <_Z22printSlabAllocatorInfov>
    kmem_cache_destroy(cache);
    80005084:	00090513          	mv	a0,s2
    80005088:	ffffd097          	auipc	ra,0xffffd
    8000508c:	144080e7          	jalr	324(ra) # 800021cc <_Z18kmem_cache_destroyP12kmem_cache_s>
    printSlabAllocatorInfo();
    80005090:	ffffd097          	auipc	ra,0xffffd
    80005094:	eb4080e7          	jalr	-332(ra) # 80001f44 <_Z22printSlabAllocatorInfov>
}
    80005098:	01813083          	ld	ra,24(sp)
    8000509c:	01013403          	ld	s0,16(sp)
    800050a0:	00813483          	ld	s1,8(sp)
    800050a4:	00013903          	ld	s2,0(sp)
    800050a8:	02010113          	addi	sp,sp,32
    800050ac:	00008067          	ret

00000000800050b0 <_Z6memsetPKvii>:
                                    "tc_1",
                                    "tc_2",
                                    "tc_3",
                                    "tc_4"};

void memset(const void *data, int size, int value) {
    800050b0:	ff010113          	addi	sp,sp,-16
    800050b4:	00813423          	sd	s0,8(sp)
    800050b8:	01010413          	addi	s0,sp,16
    for (int j = 0; j < size; j++) {
    800050bc:	00000793          	li	a5,0
    800050c0:	00b7da63          	bge	a5,a1,800050d4 <_Z6memsetPKvii+0x24>
        *((char *)data + j) = value;
    800050c4:	00f50733          	add	a4,a0,a5
    800050c8:	00c70023          	sb	a2,0(a4)
    for (int j = 0; j < size; j++) {
    800050cc:	0017879b          	addiw	a5,a5,1
    800050d0:	ff1ff06f          	j	800050c0 <_Z6memsetPKvii+0x10>
    }
}
    800050d4:	00813403          	ld	s0,8(sp)
    800050d8:	01010113          	addi	sp,sp,16
    800050dc:	00008067          	ret

00000000800050e0 <_Z9constructPv>:

void construct(void *data) {
    800050e0:	ff010113          	addi	sp,sp,-16
    800050e4:	00113423          	sd	ra,8(sp)
    800050e8:	00813023          	sd	s0,0(sp)
    800050ec:	01010413          	addi	s0,sp,16
    //static int i = 1;
    //KConsole::trapPrintInt(i); i++;
    //KConsole::trapPrintString(" Shared object constructed.\n");
    memset(data, shared_size, MASK);
    800050f0:	0a500613          	li	a2,165
    800050f4:	00700593          	li	a1,7
    800050f8:	00000097          	auipc	ra,0x0
    800050fc:	fb8080e7          	jalr	-72(ra) # 800050b0 <_Z6memsetPKvii>
}
    80005100:	00813083          	ld	ra,8(sp)
    80005104:	00013403          	ld	s0,0(sp)
    80005108:	01010113          	addi	sp,sp,16
    8000510c:	00008067          	ret

0000000080005110 <_Z5checkPvm>:

int check(void *data, size_t size) {
    80005110:	ff010113          	addi	sp,sp,-16
    80005114:	00813423          	sd	s0,8(sp)
    80005118:	01010413          	addi	s0,sp,16
    8000511c:	00050613          	mv	a2,a0
    int ret = 1;
    for (size_t i = 0; i < size; i++) {
    80005120:	00000793          	li	a5,0
    int ret = 1;
    80005124:	00100513          	li	a0,1
    80005128:	0080006f          	j	80005130 <_Z5checkPvm+0x20>
    for (size_t i = 0; i < size; i++) {
    8000512c:	00178793          	addi	a5,a5,1
    80005130:	00b7fe63          	bgeu	a5,a1,8000514c <_Z5checkPvm+0x3c>
        if (((unsigned char *)data)[i] != MASK) {
    80005134:	00f60733          	add	a4,a2,a5
    80005138:	00074683          	lbu	a3,0(a4)
    8000513c:	0a500713          	li	a4,165
    80005140:	fee686e3          	beq	a3,a4,8000512c <_Z5checkPvm+0x1c>
            ret = 0;
    80005144:	00000513          	li	a0,0
    80005148:	fe5ff06f          	j	8000512c <_Z5checkPvm+0x1c>
        }
    }

    return ret;
}
    8000514c:	00813403          	ld	s0,8(sp)
    80005150:	01010113          	addi	sp,sp,16
    80005154:	00008067          	ret

0000000080005158 <_Z4workPv>:
    kmem_cache_t *cache;
    void *data;
};

void work(void* pdata)
{
    80005158:	f8010113          	addi	sp,sp,-128
    8000515c:	06113c23          	sd	ra,120(sp)
    80005160:	06813823          	sd	s0,112(sp)
    80005164:	06913423          	sd	s1,104(sp)
    80005168:	07213023          	sd	s2,96(sp)
    8000516c:	05313c23          	sd	s3,88(sp)
    80005170:	05413823          	sd	s4,80(sp)
    80005174:	05513423          	sd	s5,72(sp)
    80005178:	05613023          	sd	s6,64(sp)
    8000517c:	03713c23          	sd	s7,56(sp)
    80005180:	03813823          	sd	s8,48(sp)
    80005184:	03913423          	sd	s9,40(sp)
    80005188:	08010413          	addi	s0,sp,128
    struct data_s data = *(struct data_s*) pdata;
    8000518c:	00053c03          	ld	s8,0(a0)
    80005190:	f9843423          	sd	s8,-120(s0)
    80005194:	00853783          	ld	a5,8(a0)
    80005198:	f8f43823          	sd	a5,-112(s0)
    8000519c:	01053783          	ld	a5,16(a0)
    800051a0:	f8f43c23          	sd	a5,-104(s0)
    int size = 0;
    int object_size = data.id + 1;
    800051a4:	000c079b          	sext.w	a5,s8
    800051a8:	001c0c1b          	addiw	s8,s8,1
    kmem_cache_t *cache = kmem_cache_create(CACHE_NAMES[data.id], object_size, 0, 0);
    800051ac:	00379713          	slli	a4,a5,0x3
    800051b0:	00007797          	auipc	a5,0x7
    800051b4:	ba078793          	addi	a5,a5,-1120 # 8000bd50 <_ZL11CACHE_NAMES>
    800051b8:	00e787b3          	add	a5,a5,a4
    800051bc:	000c0b13          	mv	s6,s8
    800051c0:	00000693          	li	a3,0
    800051c4:	00000613          	li	a2,0
    800051c8:	000c0593          	mv	a1,s8
    800051cc:	0007b503          	ld	a0,0(a5)
    800051d0:	ffffd097          	auipc	ra,0xffffd
    800051d4:	b24080e7          	jalr	-1244(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    800051d8:	00050a13          	mv	s4,a0

    struct objects_s *objs = (struct objects_s*)(kmalloc(sizeof(struct objects_s) * data.iterations));
    800051dc:	f9842b83          	lw	s7,-104(s0)
    800051e0:	004b9513          	slli	a0,s7,0x4
    800051e4:	ffffd097          	auipc	ra,0xffffd
    800051e8:	e5c080e7          	jalr	-420(ra) # 80002040 <_Z7kmallocm>
    800051ec:	00050a93          	mv	s5,a0

    for (int i = 0; i < data.iterations; i++) {
    800051f0:	00000493          	li	s1,0
    int size = 0;
    800051f4:	00000993          	li	s3,0
    800051f8:	0380006f          	j	80005230 <_Z4workPv+0xd8>
            if (!check(objs[size].data, shared_size)) {
                KConsole::trapPrintString("Value not correct!");
            }
        }
        else {
            objs[size].data = kmem_cache_alloc(cache);
    800051fc:	00499913          	slli	s2,s3,0x4
    80005200:	012a8933          	add	s2,s5,s2
    80005204:	000a0513          	mv	a0,s4
    80005208:	ffffd097          	auipc	ra,0xffffd
    8000520c:	9b4080e7          	jalr	-1612(ra) # 80001bbc <_Z16kmem_cache_allocP12kmem_cache_s>
    80005210:	00a93423          	sd	a0,8(s2)
            objs[size].cache = cache;
    80005214:	01493023          	sd	s4,0(s2)
            memset(objs[size].data, object_size, MASK);
    80005218:	0a500613          	li	a2,165
    8000521c:	000c0593          	mv	a1,s8
    80005220:	00000097          	auipc	ra,0x0
    80005224:	e90080e7          	jalr	-368(ra) # 800050b0 <_Z6memsetPKvii>
        }
        size++;
    80005228:	0019899b          	addiw	s3,s3,1
    for (int i = 0; i < data.iterations; i++) {
    8000522c:	0014849b          	addiw	s1,s1,1
    80005230:	0574da63          	bge	s1,s7,80005284 <_Z4workPv+0x12c>
        if (i % 100 == 0) {
    80005234:	06400793          	li	a5,100
    80005238:	02f4e7bb          	remw	a5,s1,a5
    8000523c:	fc0790e3          	bnez	a5,800051fc <_Z4workPv+0xa4>
            objs[size].data = kmem_cache_alloc(data.shared);
    80005240:	f9043c83          	ld	s9,-112(s0)
    80005244:	00499913          	slli	s2,s3,0x4
    80005248:	012a8933          	add	s2,s5,s2
    8000524c:	000c8513          	mv	a0,s9
    80005250:	ffffd097          	auipc	ra,0xffffd
    80005254:	96c080e7          	jalr	-1684(ra) # 80001bbc <_Z16kmem_cache_allocP12kmem_cache_s>
    80005258:	00a93423          	sd	a0,8(s2)
            objs[size].cache = data.shared;
    8000525c:	01993023          	sd	s9,0(s2)
            if (!check(objs[size].data, shared_size)) {
    80005260:	00700593          	li	a1,7
    80005264:	00000097          	auipc	ra,0x0
    80005268:	eac080e7          	jalr	-340(ra) # 80005110 <_Z5checkPvm>
    8000526c:	fa051ee3          	bnez	a0,80005228 <_Z4workPv+0xd0>
                KConsole::trapPrintString("Value not correct!");
    80005270:	00004517          	auipc	a0,0x4
    80005274:	28850513          	addi	a0,a0,648 # 800094f8 <CONSOLE_STATUS+0x4e8>
    80005278:	ffffe097          	auipc	ra,0xffffe
    8000527c:	510080e7          	jalr	1296(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    80005280:	fa9ff06f          	j	80005228 <_Z4workPv+0xd0>
    }

    kmem_cache_info(cache);
    80005284:	000a0513          	mv	a0,s4
    80005288:	ffffd097          	auipc	ra,0xffffd
    8000528c:	b60080e7          	jalr	-1184(ra) # 80001de8 <_Z15kmem_cache_infoP12kmem_cache_s>
    kmem_cache_info(data.shared);
    80005290:	f9043503          	ld	a0,-112(s0)
    80005294:	ffffd097          	auipc	ra,0xffffd
    80005298:	b54080e7          	jalr	-1196(ra) # 80001de8 <_Z15kmem_cache_infoP12kmem_cache_s>
    //printSlabAllocatorInfo();

    for (int i = 0; i < size; i++) {
    8000529c:	00000913          	li	s2,0
    800052a0:	0300006f          	j	800052d0 <_Z4workPv+0x178>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    800052a4:	000b0593          	mv	a1,s6
    800052a8:	0440006f          	j	800052ec <_Z4workPv+0x194>
            KConsole::trapPrintString("Value not correct!");
    800052ac:	00004517          	auipc	a0,0x4
    800052b0:	24c50513          	addi	a0,a0,588 # 800094f8 <CONSOLE_STATUS+0x4e8>
    800052b4:	ffffe097          	auipc	ra,0xffffe
    800052b8:	4d4080e7          	jalr	1236(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
        }
        kmem_cache_free(objs[i].cache, objs[i].data);
    800052bc:	0084b583          	ld	a1,8(s1)
    800052c0:	0004b503          	ld	a0,0(s1)
    800052c4:	ffffd097          	auipc	ra,0xffffd
    800052c8:	ad4080e7          	jalr	-1324(ra) # 80001d98 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    for (int i = 0; i < size; i++) {
    800052cc:	0019091b          	addiw	s2,s2,1
    800052d0:	03395663          	bge	s2,s3,800052fc <_Z4workPv+0x1a4>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    800052d4:	00491493          	slli	s1,s2,0x4
    800052d8:	009a84b3          	add	s1,s5,s1
    800052dc:	0084b503          	ld	a0,8(s1)
    800052e0:	0004b783          	ld	a5,0(s1)
    800052e4:	fd4780e3          	beq	a5,s4,800052a4 <_Z4workPv+0x14c>
    800052e8:	00700593          	li	a1,7
    800052ec:	00000097          	auipc	ra,0x0
    800052f0:	e24080e7          	jalr	-476(ra) # 80005110 <_Z5checkPvm>
    800052f4:	fc0514e3          	bnez	a0,800052bc <_Z4workPv+0x164>
    800052f8:	fb5ff06f          	j	800052ac <_Z4workPv+0x154>

    //kmem_cache_info(cache);
    //kmem_cache_info(data.shared);
    //printSlabAllocatorInfo();

    kfree(objs);
    800052fc:	000a8513          	mv	a0,s5
    80005300:	ffffd097          	auipc	ra,0xffffd
    80005304:	e44080e7          	jalr	-444(ra) # 80002144 <_Z5kfreePKv>
    kmem_cache_destroy(cache);
    80005308:	000a0513          	mv	a0,s4
    8000530c:	ffffd097          	auipc	ra,0xffffd
    80005310:	ec0080e7          	jalr	-320(ra) # 800021cc <_Z18kmem_cache_destroyP12kmem_cache_s>

    //printSlabAllocatorInfo();
}
    80005314:	07813083          	ld	ra,120(sp)
    80005318:	07013403          	ld	s0,112(sp)
    8000531c:	06813483          	ld	s1,104(sp)
    80005320:	06013903          	ld	s2,96(sp)
    80005324:	05813983          	ld	s3,88(sp)
    80005328:	05013a03          	ld	s4,80(sp)
    8000532c:	04813a83          	ld	s5,72(sp)
    80005330:	04013b03          	ld	s6,64(sp)
    80005334:	03813b83          	ld	s7,56(sp)
    80005338:	03013c03          	ld	s8,48(sp)
    8000533c:	02813c83          	ld	s9,40(sp)
    80005340:	08010113          	addi	sp,sp,128
    80005344:	00008067          	ret

0000000080005348 <_Z4runsPFvPvEP6data_si>:

void runs(void(*work)(void*), struct data_s* data, int num) {
    80005348:	fb010113          	addi	sp,sp,-80
    8000534c:	04113423          	sd	ra,72(sp)
    80005350:	04813023          	sd	s0,64(sp)
    80005354:	02913c23          	sd	s1,56(sp)
    80005358:	03213823          	sd	s2,48(sp)
    8000535c:	03313423          	sd	s3,40(sp)
    80005360:	05010413          	addi	s0,sp,80
    80005364:	00050993          	mv	s3,a0
    80005368:	00058913          	mv	s2,a1
    for (int i = 0; i < RUN_NUM; i++) {
    8000536c:	00000493          	li	s1,0
    80005370:	00400793          	li	a5,4
    80005374:	0297c863          	blt	a5,s1,800053a4 <_Z4runsPFvPvEP6data_si+0x5c>
        struct data_s private_data;
        private_data = *(struct data_s*) data;
    80005378:	00093783          	ld	a5,0(s2)
    8000537c:	faf43c23          	sd	a5,-72(s0)
    80005380:	00893783          	ld	a5,8(s2)
    80005384:	fcf43023          	sd	a5,-64(s0)
    80005388:	01093783          	ld	a5,16(s2)
    8000538c:	fcf43423          	sd	a5,-56(s0)
        private_data.id = i;
    80005390:	fa942c23          	sw	s1,-72(s0)
        work(&private_data);
    80005394:	fb840513          	addi	a0,s0,-72
    80005398:	000980e7          	jalr	s3
    for (int i = 0; i < RUN_NUM; i++) {
    8000539c:	0014849b          	addiw	s1,s1,1
    800053a0:	fd1ff06f          	j	80005370 <_Z4runsPFvPvEP6data_si+0x28>
    }
}
    800053a4:	04813083          	ld	ra,72(sp)
    800053a8:	04013403          	ld	s0,64(sp)
    800053ac:	03813483          	ld	s1,56(sp)
    800053b0:	03013903          	ld	s2,48(sp)
    800053b4:	02813983          	ld	s3,40(sp)
    800053b8:	05010113          	addi	sp,sp,80
    800053bc:	00008067          	ret

00000000800053c0 <_Z7testOS2v>:

void testOS2()
{
    800053c0:	fc010113          	addi	sp,sp,-64
    800053c4:	02113c23          	sd	ra,56(sp)
    800053c8:	02813823          	sd	s0,48(sp)
    800053cc:	02913423          	sd	s1,40(sp)
    800053d0:	04010413          	addi	s0,sp,64
    kmem_cache_t *shared = kmem_cache_create("shared object", shared_size, construct, nullptr);
    800053d4:	00000693          	li	a3,0
    800053d8:	00000617          	auipc	a2,0x0
    800053dc:	d0860613          	addi	a2,a2,-760 # 800050e0 <_Z9constructPv>
    800053e0:	00700593          	li	a1,7
    800053e4:	00004517          	auipc	a0,0x4
    800053e8:	12c50513          	addi	a0,a0,300 # 80009510 <CONSOLE_STATUS+0x500>
    800053ec:	ffffd097          	auipc	ra,0xffffd
    800053f0:	908080e7          	jalr	-1784(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    800053f4:	00050493          	mv	s1,a0

    struct data_s data;
    data.shared = shared;
    800053f8:	fca43823          	sd	a0,-48(s0)
    data.iterations = ITERATIONS;
    800053fc:	3e800793          	li	a5,1000
    80005400:	fcf42c23          	sw	a5,-40(s0)
    runs(work, &data, RUN_NUM);
    80005404:	00500613          	li	a2,5
    80005408:	fc840593          	addi	a1,s0,-56
    8000540c:	00000517          	auipc	a0,0x0
    80005410:	d4c50513          	addi	a0,a0,-692 # 80005158 <_Z4workPv>
    80005414:	00000097          	auipc	ra,0x0
    80005418:	f34080e7          	jalr	-204(ra) # 80005348 <_Z4runsPFvPvEP6data_si>

    kmem_cache_destroy(shared);
    8000541c:	00048513          	mv	a0,s1
    80005420:	ffffd097          	auipc	ra,0xffffd
    80005424:	dac080e7          	jalr	-596(ra) # 800021cc <_Z18kmem_cache_destroyP12kmem_cache_s>
    80005428:	03813083          	ld	ra,56(sp)
    8000542c:	03013403          	ld	s0,48(sp)
    80005430:	02813483          	ld	s1,40(sp)
    80005434:	04010113          	addi	sp,sp,64
    80005438:	00008067          	ret

000000008000543c <_ZN10KSemaphoreC1Ei>:
#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    8000543c:	ff010113          	addi	sp,sp,-16
    80005440:	00813423          	sd	s0,8(sp)
    80005444:	01010413          	addi	s0,sp,16
{
    this->val = val;
    80005448:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    8000544c:	00053423          	sd	zero,8(a0)
    80005450:	00053023          	sd	zero,0(a0)
}
    80005454:	00813403          	ld	s0,8(sp)
    80005458:	01010113          	addi	sp,sp,16
    8000545c:	00008067          	ret

0000000080005460 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80005460:	ff010113          	addi	sp,sp,-16
    80005464:	00813423          	sd	s0,8(sp)
    80005468:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    8000546c:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80005470:	00053783          	ld	a5,0(a0)
    80005474:	00078e63          	beqz	a5,80005490 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80005478:	00853783          	ld	a5,8(a0)
    8000547c:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80005480:	00b53423          	sd	a1,8(a0)
    }
}
    80005484:	00813403          	ld	s0,8(sp)
    80005488:	01010113          	addi	sp,sp,16
    8000548c:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80005490:	00b53423          	sd	a1,8(a0)
    80005494:	00b53023          	sd	a1,0(a0)
    80005498:	fedff06f          	j	80005484 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

000000008000549c <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    8000549c:	ff010113          	addi	sp,sp,-16
    800054a0:	00113423          	sd	ra,8(sp)
    800054a4:	00813023          	sd	s0,0(sp)
    800054a8:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    800054ac:	00007797          	auipc	a5,0x7
    800054b0:	9847b783          	ld	a5,-1660(a5) # 8000be30 <_GLOBAL_OFFSET_TABLE_+0x78>
    800054b4:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    800054b8:	00200793          	li	a5,2
    800054bc:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    800054c0:	00000097          	auipc	ra,0x0
    800054c4:	fa0080e7          	jalr	-96(ra) # 80005460 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    800054c8:	ffffd097          	auipc	ra,0xffffd
    800054cc:	25c080e7          	jalr	604(ra) # 80002724 <_ZN3PCB8dispatchEv>
}
    800054d0:	00813083          	ld	ra,8(sp)
    800054d4:	00013403          	ld	s0,0(sp)
    800054d8:	01010113          	addi	sp,sp,16
    800054dc:	00008067          	ret

00000000800054e0 <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    800054e0:	00007797          	auipc	a5,0x7
    800054e4:	9507b783          	ld	a5,-1712(a5) # 8000be30 <_GLOBAL_OFFSET_TABLE_+0x78>
    800054e8:	0007b783          	ld	a5,0(a5)
    800054ec:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    800054f0:	01052783          	lw	a5,16(a0)
    800054f4:	fff7879b          	addiw	a5,a5,-1
    800054f8:	00f52823          	sw	a5,16(a0)
    800054fc:	02079713          	slli	a4,a5,0x20
    80005500:	00074663          	bltz	a4,8000550c <_ZN10KSemaphore4waitEv+0x2c>
}
    80005504:	00000513          	li	a0,0
    80005508:	00008067          	ret
{
    8000550c:	ff010113          	addi	sp,sp,-16
    80005510:	00113423          	sd	ra,8(sp)
    80005514:	00813023          	sd	s0,0(sp)
    80005518:	01010413          	addi	s0,sp,16
        block();
    8000551c:	00000097          	auipc	ra,0x0
    80005520:	f80080e7          	jalr	-128(ra) # 8000549c <_ZN10KSemaphore5blockEv>
}
    80005524:	00000513          	li	a0,0
    80005528:	00813083          	ld	ra,8(sp)
    8000552c:	00013403          	ld	s0,0(sp)
    80005530:	01010113          	addi	sp,sp,16
    80005534:	00008067          	ret

0000000080005538 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80005538:	ff010113          	addi	sp,sp,-16
    8000553c:	00813423          	sd	s0,8(sp)
    80005540:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80005544:	00053503          	ld	a0,0(a0)
    80005548:	00813403          	ld	s0,8(sp)
    8000554c:	01010113          	addi	sp,sp,16
    80005550:	00008067          	ret

0000000080005554 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80005554:	ff010113          	addi	sp,sp,-16
    80005558:	00813423          	sd	s0,8(sp)
    8000555c:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80005560:	00053783          	ld	a5,0(a0)
    80005564:	00078c63          	beqz	a5,8000557c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80005568:	0087b703          	ld	a4,8(a5)
    8000556c:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80005570:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80005574:	00053783          	ld	a5,0(a0)
    80005578:	00078863          	beqz	a5,80005588 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    8000557c:	00813403          	ld	s0,8(sp)
    80005580:	01010113          	addi	sp,sp,16
    80005584:	00008067          	ret
        tailBlocked =0;
    80005588:	00053423          	sd	zero,8(a0)
    8000558c:	ff1ff06f          	j	8000557c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080005590 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80005590:	fe010113          	addi	sp,sp,-32
    80005594:	00113c23          	sd	ra,24(sp)
    80005598:	00813823          	sd	s0,16(sp)
    8000559c:	00913423          	sd	s1,8(sp)
    800055a0:	01213023          	sd	s2,0(sp)
    800055a4:	02010413          	addi	s0,sp,32
    800055a8:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    800055ac:	00090513          	mv	a0,s2
    800055b0:	00000097          	auipc	ra,0x0
    800055b4:	f88080e7          	jalr	-120(ra) # 80005538 <_ZN10KSemaphore15getFirstBlockedEv>
    800055b8:	00050493          	mv	s1,a0
    800055bc:	02050463          	beqz	a0,800055e4 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    800055c0:	00090513          	mv	a0,s2
    800055c4:	00000097          	auipc	ra,0x0
    800055c8:	f90080e7          	jalr	-112(ra) # 80005554 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    800055cc:	00100793          	li	a5,1
    800055d0:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    800055d4:	00048513          	mv	a0,s1
    800055d8:	ffffe097          	auipc	ra,0xffffe
    800055dc:	468080e7          	jalr	1128(ra) # 80003a40 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    800055e0:	fcdff06f          	j	800055ac <_ZN10KSemaphoreD1Ev+0x1c>
}
    800055e4:	01813083          	ld	ra,24(sp)
    800055e8:	01013403          	ld	s0,16(sp)
    800055ec:	00813483          	ld	s1,8(sp)
    800055f0:	00013903          	ld	s2,0(sp)
    800055f4:	02010113          	addi	sp,sp,32
    800055f8:	00008067          	ret

00000000800055fc <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800055fc:	fe010113          	addi	sp,sp,-32
    80005600:	00113c23          	sd	ra,24(sp)
    80005604:	00813823          	sd	s0,16(sp)
    80005608:	00913423          	sd	s1,8(sp)
    8000560c:	01213023          	sd	s2,0(sp)
    80005610:	02010413          	addi	s0,sp,32
    80005614:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80005618:	00000097          	auipc	ra,0x0
    8000561c:	f20080e7          	jalr	-224(ra) # 80005538 <_ZN10KSemaphore15getFirstBlockedEv>
    80005620:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80005624:	00090513          	mv	a0,s2
    80005628:	00000097          	auipc	ra,0x0
    8000562c:	f2c080e7          	jalr	-212(ra) # 80005554 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80005630:	00048863          	beqz	s1,80005640 <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    80005634:	00048513          	mv	a0,s1
    80005638:	ffffe097          	auipc	ra,0xffffe
    8000563c:	408080e7          	jalr	1032(ra) # 80003a40 <_ZN9Scheduler3putEP3PCB>
    }
}
    80005640:	01813083          	ld	ra,24(sp)
    80005644:	01013403          	ld	s0,16(sp)
    80005648:	00813483          	ld	s1,8(sp)
    8000564c:	00013903          	ld	s2,0(sp)
    80005650:	02010113          	addi	sp,sp,32
    80005654:	00008067          	ret

0000000080005658 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80005658:	01052783          	lw	a5,16(a0)
    8000565c:	0017879b          	addiw	a5,a5,1
    80005660:	0007871b          	sext.w	a4,a5
    80005664:	00f52823          	sw	a5,16(a0)
    80005668:	00e05663          	blez	a4,80005674 <_ZN10KSemaphore6signalEv+0x1c>
}
    8000566c:	00000513          	li	a0,0
    80005670:	00008067          	ret
uint64 KSemaphore::signal() {
    80005674:	ff010113          	addi	sp,sp,-16
    80005678:	00113423          	sd	ra,8(sp)
    8000567c:	00813023          	sd	s0,0(sp)
    80005680:	01010413          	addi	s0,sp,16
        unblock();
    80005684:	00000097          	auipc	ra,0x0
    80005688:	f78080e7          	jalr	-136(ra) # 800055fc <_ZN10KSemaphore7unblockEv>
}
    8000568c:	00000513          	li	a0,0
    80005690:	00813083          	ld	ra,8(sp)
    80005694:	00013403          	ld	s0,0(sp)
    80005698:	01010113          	addi	sp,sp,16
    8000569c:	00008067          	ret

00000000800056a0 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    800056a0:	ff010113          	addi	sp,sp,-16
    800056a4:	00113423          	sd	ra,8(sp)
    800056a8:	00813023          	sd	s0,0(sp)
    800056ac:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::semaphoreCache);
    800056b0:	00006797          	auipc	a5,0x6
    800056b4:	7287b783          	ld	a5,1832(a5) # 8000bdd8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800056b8:	0007b503          	ld	a0,0(a5)
    800056bc:	ffffc097          	auipc	ra,0xffffc
    800056c0:	500080e7          	jalr	1280(ra) # 80001bbc <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    800056c4:	00813083          	ld	ra,8(sp)
    800056c8:	00013403          	ld	s0,0(sp)
    800056cc:	01010113          	addi	sp,sp,16
    800056d0:	00008067          	ret

00000000800056d4 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    800056d4:	fd010113          	addi	sp,sp,-48
    800056d8:	02113423          	sd	ra,40(sp)
    800056dc:	02813023          	sd	s0,32(sp)
    800056e0:	00913c23          	sd	s1,24(sp)
    800056e4:	01213823          	sd	s2,16(sp)
    800056e8:	01313423          	sd	s3,8(sp)
    800056ec:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    800056f0:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    800056f4:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    800056f8:	01800513          	li	a0,24
    800056fc:	00000097          	auipc	ra,0x0
    80005700:	fa4080e7          	jalr	-92(ra) # 800056a0 <_ZN10KSemaphorenwEm>
    80005704:	00050493          	mv	s1,a0
    80005708:	00050863          	beqz	a0,80005718 <_ZN10KSemaphore14semOpenHandlerEv+0x44>
    8000570c:	0009859b          	sext.w	a1,s3
    80005710:	00000097          	auipc	ra,0x0
    80005714:	d2c080e7          	jalr	-724(ra) # 8000543c <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    80005718:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    8000571c:	02048663          	beqz	s1,80005748 <_ZN10KSemaphore14semOpenHandlerEv+0x74>
            __asm__ volatile("li a0, 0");
    80005720:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80005724:	fffff097          	auipc	ra,0xfffff
    80005728:	02c080e7          	jalr	44(ra) # 80004750 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000572c:	02813083          	ld	ra,40(sp)
    80005730:	02013403          	ld	s0,32(sp)
    80005734:	01813483          	ld	s1,24(sp)
    80005738:	01013903          	ld	s2,16(sp)
    8000573c:	00813983          	ld	s3,8(sp)
    80005740:	03010113          	addi	sp,sp,48
    80005744:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80005748:	fff00513          	li	a0,-1
    8000574c:	fd9ff06f          	j	80005724 <_ZN10KSemaphore14semOpenHandlerEv+0x50>

0000000080005750 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80005750:	ff010113          	addi	sp,sp,-16
    80005754:	00113423          	sd	ra,8(sp)
    80005758:	00813023          	sd	s0,0(sp)
    8000575c:	01010413          	addi	s0,sp,16
    80005760:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::semaphoreCache, p);
    80005764:	00006797          	auipc	a5,0x6
    80005768:	6747b783          	ld	a5,1652(a5) # 8000bdd8 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000576c:	0007b503          	ld	a0,0(a5)
    80005770:	ffffc097          	auipc	ra,0xffffc
    80005774:	628080e7          	jalr	1576(ra) # 80001d98 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    80005778:	00813083          	ld	ra,8(sp)
    8000577c:	00013403          	ld	s0,0(sp)
    80005780:	01010113          	addi	sp,sp,16
    80005784:	00008067          	ret

0000000080005788 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80005788:	ff010113          	addi	sp,sp,-16
    8000578c:	00113423          	sd	ra,8(sp)
    80005790:	00813023          	sd	s0,0(sp)
    80005794:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80005798:	00058513          	mv	a0,a1
    kSem->wait();
    8000579c:	00000097          	auipc	ra,0x0
    800057a0:	d44080e7          	jalr	-700(ra) # 800054e0 <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    800057a4:	00006797          	auipc	a5,0x6
    800057a8:	68c7b783          	ld	a5,1676(a5) # 8000be30 <_GLOBAL_OFFSET_TABLE_+0x78>
    800057ac:	0007b783          	ld	a5,0(a5)
    800057b0:	0587c783          	lbu	a5,88(a5)
    800057b4:	02078063          	beqz	a5,800057d4 <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    800057b8:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    800057bc:	fffff097          	auipc	ra,0xfffff
    800057c0:	f94080e7          	jalr	-108(ra) # 80004750 <_ZN5Riscv13w_a0_sscratchEv>
}
    800057c4:	00813083          	ld	ra,8(sp)
    800057c8:	00013403          	ld	s0,0(sp)
    800057cc:	01010113          	addi	sp,sp,16
    800057d0:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    800057d4:	00000513          	li	a0,0
    800057d8:	fe5ff06f          	j	800057bc <_ZN10KSemaphore14semWaitHandlerEv+0x34>

00000000800057dc <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    800057dc:	ff010113          	addi	sp,sp,-16
    800057e0:	00113423          	sd	ra,8(sp)
    800057e4:	00813023          	sd	s0,0(sp)
    800057e8:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800057ec:	00058513          	mv	a0,a1
    if (kSem == 0)
    800057f0:	02050463          	beqz	a0,80005818 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    800057f4:	00000097          	auipc	ra,0x0
    800057f8:	e64080e7          	jalr	-412(ra) # 80005658 <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    800057fc:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80005800:	fffff097          	auipc	ra,0xfffff
    80005804:	f50080e7          	jalr	-176(ra) # 80004750 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005808:	00813083          	ld	ra,8(sp)
    8000580c:	00013403          	ld	s0,0(sp)
    80005810:	01010113          	addi	sp,sp,16
    80005814:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80005818:	00100513          	li	a0,1
    8000581c:	fe5ff06f          	j	80005800 <_ZN10KSemaphore16semSignalHandlerEv+0x24>

0000000080005820 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80005820:	fe010113          	addi	sp,sp,-32
    80005824:	00113c23          	sd	ra,24(sp)
    80005828:	00813823          	sd	s0,16(sp)
    8000582c:	00913423          	sd	s1,8(sp)
    80005830:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80005834:	00058493          	mv	s1,a1
    delete kSem;
    80005838:	00048e63          	beqz	s1,80005854 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    8000583c:	00048513          	mv	a0,s1
    80005840:	00000097          	auipc	ra,0x0
    80005844:	d50080e7          	jalr	-688(ra) # 80005590 <_ZN10KSemaphoreD1Ev>
    80005848:	00048513          	mv	a0,s1
    8000584c:	00000097          	auipc	ra,0x0
    80005850:	f04080e7          	jalr	-252(ra) # 80005750 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80005854:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80005858:	fffff097          	auipc	ra,0xfffff
    8000585c:	ef8080e7          	jalr	-264(ra) # 80004750 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005860:	01813083          	ld	ra,24(sp)
    80005864:	01013403          	ld	s0,16(sp)
    80005868:	00813483          	ld	s1,8(sp)
    8000586c:	02010113          	addi	sp,sp,32
    80005870:	00008067          	ret

0000000080005874 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005874:	fe010113          	addi	sp,sp,-32
    80005878:	00113c23          	sd	ra,24(sp)
    8000587c:	00813823          	sd	s0,16(sp)
    80005880:	00913423          	sd	s1,8(sp)
    80005884:	02010413          	addi	s0,sp,32
    80005888:	00050493          	mv	s1,a0
    LOCK();
    8000588c:	00100613          	li	a2,1
    80005890:	00000593          	li	a1,0
    80005894:	0000e517          	auipc	a0,0xe
    80005898:	6cc50513          	addi	a0,a0,1740 # 80013f60 <lockPrint>
    8000589c:	ffffc097          	auipc	ra,0xffffc
    800058a0:	97c080e7          	jalr	-1668(ra) # 80001218 <copy_and_swap>
    800058a4:	fe0514e3          	bnez	a0,8000588c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800058a8:	0004c503          	lbu	a0,0(s1)
    800058ac:	00050a63          	beqz	a0,800058c0 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800058b0:	ffffd097          	auipc	ra,0xffffd
    800058b4:	d18080e7          	jalr	-744(ra) # 800025c8 <_Z4putcc>
        string++;
    800058b8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800058bc:	fedff06f          	j	800058a8 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800058c0:	00000613          	li	a2,0
    800058c4:	00100593          	li	a1,1
    800058c8:	0000e517          	auipc	a0,0xe
    800058cc:	69850513          	addi	a0,a0,1688 # 80013f60 <lockPrint>
    800058d0:	ffffc097          	auipc	ra,0xffffc
    800058d4:	948080e7          	jalr	-1720(ra) # 80001218 <copy_and_swap>
    800058d8:	fe0514e3          	bnez	a0,800058c0 <_Z11printStringPKc+0x4c>
}
    800058dc:	01813083          	ld	ra,24(sp)
    800058e0:	01013403          	ld	s0,16(sp)
    800058e4:	00813483          	ld	s1,8(sp)
    800058e8:	02010113          	addi	sp,sp,32
    800058ec:	00008067          	ret

00000000800058f0 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800058f0:	fd010113          	addi	sp,sp,-48
    800058f4:	02113423          	sd	ra,40(sp)
    800058f8:	02813023          	sd	s0,32(sp)
    800058fc:	00913c23          	sd	s1,24(sp)
    80005900:	01213823          	sd	s2,16(sp)
    80005904:	01313423          	sd	s3,8(sp)
    80005908:	01413023          	sd	s4,0(sp)
    8000590c:	03010413          	addi	s0,sp,48
    80005910:	00050993          	mv	s3,a0
    80005914:	00058a13          	mv	s4,a1
    LOCK();
    80005918:	00100613          	li	a2,1
    8000591c:	00000593          	li	a1,0
    80005920:	0000e517          	auipc	a0,0xe
    80005924:	64050513          	addi	a0,a0,1600 # 80013f60 <lockPrint>
    80005928:	ffffc097          	auipc	ra,0xffffc
    8000592c:	8f0080e7          	jalr	-1808(ra) # 80001218 <copy_and_swap>
    80005930:	fe0514e3          	bnez	a0,80005918 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005934:	00000913          	li	s2,0
    80005938:	00090493          	mv	s1,s2
    8000593c:	0019091b          	addiw	s2,s2,1
    80005940:	03495a63          	bge	s2,s4,80005974 <_Z9getStringPci+0x84>
        cc = getc();
    80005944:	ffffd097          	auipc	ra,0xffffd
    80005948:	c5c080e7          	jalr	-932(ra) # 800025a0 <_Z4getcv>
        if(cc < 1)
    8000594c:	02050463          	beqz	a0,80005974 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005950:	009984b3          	add	s1,s3,s1
    80005954:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005958:	00a00793          	li	a5,10
    8000595c:	00f50a63          	beq	a0,a5,80005970 <_Z9getStringPci+0x80>
    80005960:	00d00793          	li	a5,13
    80005964:	fcf51ae3          	bne	a0,a5,80005938 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005968:	00090493          	mv	s1,s2
    8000596c:	0080006f          	j	80005974 <_Z9getStringPci+0x84>
    80005970:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005974:	009984b3          	add	s1,s3,s1
    80005978:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000597c:	00000613          	li	a2,0
    80005980:	00100593          	li	a1,1
    80005984:	0000e517          	auipc	a0,0xe
    80005988:	5dc50513          	addi	a0,a0,1500 # 80013f60 <lockPrint>
    8000598c:	ffffc097          	auipc	ra,0xffffc
    80005990:	88c080e7          	jalr	-1908(ra) # 80001218 <copy_and_swap>
    80005994:	fe0514e3          	bnez	a0,8000597c <_Z9getStringPci+0x8c>
    return buf;
}
    80005998:	00098513          	mv	a0,s3
    8000599c:	02813083          	ld	ra,40(sp)
    800059a0:	02013403          	ld	s0,32(sp)
    800059a4:	01813483          	ld	s1,24(sp)
    800059a8:	01013903          	ld	s2,16(sp)
    800059ac:	00813983          	ld	s3,8(sp)
    800059b0:	00013a03          	ld	s4,0(sp)
    800059b4:	03010113          	addi	sp,sp,48
    800059b8:	00008067          	ret

00000000800059bc <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800059bc:	ff010113          	addi	sp,sp,-16
    800059c0:	00813423          	sd	s0,8(sp)
    800059c4:	01010413          	addi	s0,sp,16
    800059c8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800059cc:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800059d0:	0006c603          	lbu	a2,0(a3)
    800059d4:	fd06071b          	addiw	a4,a2,-48
    800059d8:	0ff77713          	andi	a4,a4,255
    800059dc:	00900793          	li	a5,9
    800059e0:	02e7e063          	bltu	a5,a4,80005a00 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800059e4:	0025179b          	slliw	a5,a0,0x2
    800059e8:	00a787bb          	addw	a5,a5,a0
    800059ec:	0017979b          	slliw	a5,a5,0x1
    800059f0:	00168693          	addi	a3,a3,1
    800059f4:	00c787bb          	addw	a5,a5,a2
    800059f8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800059fc:	fd5ff06f          	j	800059d0 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005a00:	00813403          	ld	s0,8(sp)
    80005a04:	01010113          	addi	sp,sp,16
    80005a08:	00008067          	ret

0000000080005a0c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005a0c:	fc010113          	addi	sp,sp,-64
    80005a10:	02113c23          	sd	ra,56(sp)
    80005a14:	02813823          	sd	s0,48(sp)
    80005a18:	02913423          	sd	s1,40(sp)
    80005a1c:	03213023          	sd	s2,32(sp)
    80005a20:	01313c23          	sd	s3,24(sp)
    80005a24:	04010413          	addi	s0,sp,64
    80005a28:	00050493          	mv	s1,a0
    80005a2c:	00058913          	mv	s2,a1
    80005a30:	00060993          	mv	s3,a2
    LOCK();
    80005a34:	00100613          	li	a2,1
    80005a38:	00000593          	li	a1,0
    80005a3c:	0000e517          	auipc	a0,0xe
    80005a40:	52450513          	addi	a0,a0,1316 # 80013f60 <lockPrint>
    80005a44:	ffffb097          	auipc	ra,0xffffb
    80005a48:	7d4080e7          	jalr	2004(ra) # 80001218 <copy_and_swap>
    80005a4c:	fe0514e3          	bnez	a0,80005a34 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005a50:	00098463          	beqz	s3,80005a58 <_Z8printIntiii+0x4c>
    80005a54:	0804c463          	bltz	s1,80005adc <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005a58:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005a5c:	00000593          	li	a1,0
    }

    i = 0;
    80005a60:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005a64:	0009079b          	sext.w	a5,s2
    80005a68:	0325773b          	remuw	a4,a0,s2
    80005a6c:	00048613          	mv	a2,s1
    80005a70:	0014849b          	addiw	s1,s1,1
    80005a74:	02071693          	slli	a3,a4,0x20
    80005a78:	0206d693          	srli	a3,a3,0x20
    80005a7c:	00006717          	auipc	a4,0x6
    80005a80:	2fc70713          	addi	a4,a4,764 # 8000bd78 <digits>
    80005a84:	00d70733          	add	a4,a4,a3
    80005a88:	00074683          	lbu	a3,0(a4)
    80005a8c:	fd040713          	addi	a4,s0,-48
    80005a90:	00c70733          	add	a4,a4,a2
    80005a94:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005a98:	0005071b          	sext.w	a4,a0
    80005a9c:	0325553b          	divuw	a0,a0,s2
    80005aa0:	fcf772e3          	bgeu	a4,a5,80005a64 <_Z8printIntiii+0x58>
    if(neg)
    80005aa4:	00058c63          	beqz	a1,80005abc <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005aa8:	fd040793          	addi	a5,s0,-48
    80005aac:	009784b3          	add	s1,a5,s1
    80005ab0:	02d00793          	li	a5,45
    80005ab4:	fef48823          	sb	a5,-16(s1)
    80005ab8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005abc:	fff4849b          	addiw	s1,s1,-1
    80005ac0:	0204c463          	bltz	s1,80005ae8 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005ac4:	fd040793          	addi	a5,s0,-48
    80005ac8:	009787b3          	add	a5,a5,s1
    80005acc:	ff07c503          	lbu	a0,-16(a5)
    80005ad0:	ffffd097          	auipc	ra,0xffffd
    80005ad4:	af8080e7          	jalr	-1288(ra) # 800025c8 <_Z4putcc>
    80005ad8:	fe5ff06f          	j	80005abc <_Z8printIntiii+0xb0>
        x = -xx;
    80005adc:	4090053b          	negw	a0,s1
        neg = 1;
    80005ae0:	00100593          	li	a1,1
        x = -xx;
    80005ae4:	f7dff06f          	j	80005a60 <_Z8printIntiii+0x54>

    UNLOCK();
    80005ae8:	00000613          	li	a2,0
    80005aec:	00100593          	li	a1,1
    80005af0:	0000e517          	auipc	a0,0xe
    80005af4:	47050513          	addi	a0,a0,1136 # 80013f60 <lockPrint>
    80005af8:	ffffb097          	auipc	ra,0xffffb
    80005afc:	720080e7          	jalr	1824(ra) # 80001218 <copy_and_swap>
    80005b00:	fe0514e3          	bnez	a0,80005ae8 <_Z8printIntiii+0xdc>
}
    80005b04:	03813083          	ld	ra,56(sp)
    80005b08:	03013403          	ld	s0,48(sp)
    80005b0c:	02813483          	ld	s1,40(sp)
    80005b10:	02013903          	ld	s2,32(sp)
    80005b14:	01813983          	ld	s3,24(sp)
    80005b18:	04010113          	addi	sp,sp,64
    80005b1c:	00008067          	ret

0000000080005b20 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005b20:	fd010113          	addi	sp,sp,-48
    80005b24:	02113423          	sd	ra,40(sp)
    80005b28:	02813023          	sd	s0,32(sp)
    80005b2c:	00913c23          	sd	s1,24(sp)
    80005b30:	01213823          	sd	s2,16(sp)
    80005b34:	01313423          	sd	s3,8(sp)
    80005b38:	03010413          	addi	s0,sp,48
    80005b3c:	00050493          	mv	s1,a0
    80005b40:	00058993          	mv	s3,a1
    80005b44:	0015879b          	addiw	a5,a1,1
    80005b48:	0007851b          	sext.w	a0,a5
    80005b4c:	00f4a023          	sw	a5,0(s1)
    80005b50:	0004a823          	sw	zero,16(s1)
    80005b54:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005b58:	00251513          	slli	a0,a0,0x2
    80005b5c:	ffffc097          	auipc	ra,0xffffc
    80005b60:	78c080e7          	jalr	1932(ra) # 800022e8 <_Z9mem_allocm>
    80005b64:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005b68:	01000513          	li	a0,16
    80005b6c:	ffffe097          	auipc	ra,0xffffe
    80005b70:	464080e7          	jalr	1124(ra) # 80003fd0 <_Znwm>
    80005b74:	00050913          	mv	s2,a0
    80005b78:	00050863          	beqz	a0,80005b88 <_ZN9BufferCPPC1Ei+0x68>
    80005b7c:	00000593          	li	a1,0
    80005b80:	ffffe097          	auipc	ra,0xffffe
    80005b84:	6a4080e7          	jalr	1700(ra) # 80004224 <_ZN9SemaphoreC1Ej>
    80005b88:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005b8c:	01000513          	li	a0,16
    80005b90:	ffffe097          	auipc	ra,0xffffe
    80005b94:	440080e7          	jalr	1088(ra) # 80003fd0 <_Znwm>
    80005b98:	00050913          	mv	s2,a0
    80005b9c:	00050863          	beqz	a0,80005bac <_ZN9BufferCPPC1Ei+0x8c>
    80005ba0:	00098593          	mv	a1,s3
    80005ba4:	ffffe097          	auipc	ra,0xffffe
    80005ba8:	680080e7          	jalr	1664(ra) # 80004224 <_ZN9SemaphoreC1Ej>
    80005bac:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80005bb0:	01000513          	li	a0,16
    80005bb4:	ffffe097          	auipc	ra,0xffffe
    80005bb8:	41c080e7          	jalr	1052(ra) # 80003fd0 <_Znwm>
    80005bbc:	00050913          	mv	s2,a0
    80005bc0:	00050863          	beqz	a0,80005bd0 <_ZN9BufferCPPC1Ei+0xb0>
    80005bc4:	00100593          	li	a1,1
    80005bc8:	ffffe097          	auipc	ra,0xffffe
    80005bcc:	65c080e7          	jalr	1628(ra) # 80004224 <_ZN9SemaphoreC1Ej>
    80005bd0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005bd4:	01000513          	li	a0,16
    80005bd8:	ffffe097          	auipc	ra,0xffffe
    80005bdc:	3f8080e7          	jalr	1016(ra) # 80003fd0 <_Znwm>
    80005be0:	00050913          	mv	s2,a0
    80005be4:	00050863          	beqz	a0,80005bf4 <_ZN9BufferCPPC1Ei+0xd4>
    80005be8:	00100593          	li	a1,1
    80005bec:	ffffe097          	auipc	ra,0xffffe
    80005bf0:	638080e7          	jalr	1592(ra) # 80004224 <_ZN9SemaphoreC1Ej>
    80005bf4:	0324b823          	sd	s2,48(s1)
}
    80005bf8:	02813083          	ld	ra,40(sp)
    80005bfc:	02013403          	ld	s0,32(sp)
    80005c00:	01813483          	ld	s1,24(sp)
    80005c04:	01013903          	ld	s2,16(sp)
    80005c08:	00813983          	ld	s3,8(sp)
    80005c0c:	03010113          	addi	sp,sp,48
    80005c10:	00008067          	ret
    80005c14:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005c18:	00090513          	mv	a0,s2
    80005c1c:	ffffe097          	auipc	ra,0xffffe
    80005c20:	3dc080e7          	jalr	988(ra) # 80003ff8 <_ZdlPv>
    80005c24:	00048513          	mv	a0,s1
    80005c28:	0000f097          	auipc	ra,0xf
    80005c2c:	410080e7          	jalr	1040(ra) # 80015038 <_Unwind_Resume>
    80005c30:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005c34:	00090513          	mv	a0,s2
    80005c38:	ffffe097          	auipc	ra,0xffffe
    80005c3c:	3c0080e7          	jalr	960(ra) # 80003ff8 <_ZdlPv>
    80005c40:	00048513          	mv	a0,s1
    80005c44:	0000f097          	auipc	ra,0xf
    80005c48:	3f4080e7          	jalr	1012(ra) # 80015038 <_Unwind_Resume>
    80005c4c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005c50:	00090513          	mv	a0,s2
    80005c54:	ffffe097          	auipc	ra,0xffffe
    80005c58:	3a4080e7          	jalr	932(ra) # 80003ff8 <_ZdlPv>
    80005c5c:	00048513          	mv	a0,s1
    80005c60:	0000f097          	auipc	ra,0xf
    80005c64:	3d8080e7          	jalr	984(ra) # 80015038 <_Unwind_Resume>
    80005c68:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005c6c:	00090513          	mv	a0,s2
    80005c70:	ffffe097          	auipc	ra,0xffffe
    80005c74:	388080e7          	jalr	904(ra) # 80003ff8 <_ZdlPv>
    80005c78:	00048513          	mv	a0,s1
    80005c7c:	0000f097          	auipc	ra,0xf
    80005c80:	3bc080e7          	jalr	956(ra) # 80015038 <_Unwind_Resume>

0000000080005c84 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005c84:	fe010113          	addi	sp,sp,-32
    80005c88:	00113c23          	sd	ra,24(sp)
    80005c8c:	00813823          	sd	s0,16(sp)
    80005c90:	00913423          	sd	s1,8(sp)
    80005c94:	01213023          	sd	s2,0(sp)
    80005c98:	02010413          	addi	s0,sp,32
    80005c9c:	00050493          	mv	s1,a0
    80005ca0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005ca4:	01853503          	ld	a0,24(a0)
    80005ca8:	ffffe097          	auipc	ra,0xffffe
    80005cac:	544080e7          	jalr	1348(ra) # 800041ec <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005cb0:	0304b503          	ld	a0,48(s1)
    80005cb4:	ffffe097          	auipc	ra,0xffffe
    80005cb8:	538080e7          	jalr	1336(ra) # 800041ec <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005cbc:	0084b783          	ld	a5,8(s1)
    80005cc0:	0144a703          	lw	a4,20(s1)
    80005cc4:	00271713          	slli	a4,a4,0x2
    80005cc8:	00e787b3          	add	a5,a5,a4
    80005ccc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005cd0:	0144a783          	lw	a5,20(s1)
    80005cd4:	0017879b          	addiw	a5,a5,1
    80005cd8:	0004a703          	lw	a4,0(s1)
    80005cdc:	02e7e7bb          	remw	a5,a5,a4
    80005ce0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005ce4:	0304b503          	ld	a0,48(s1)
    80005ce8:	ffffe097          	auipc	ra,0xffffe
    80005cec:	588080e7          	jalr	1416(ra) # 80004270 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005cf0:	0204b503          	ld	a0,32(s1)
    80005cf4:	ffffe097          	auipc	ra,0xffffe
    80005cf8:	57c080e7          	jalr	1404(ra) # 80004270 <_ZN9Semaphore6signalEv>

}
    80005cfc:	01813083          	ld	ra,24(sp)
    80005d00:	01013403          	ld	s0,16(sp)
    80005d04:	00813483          	ld	s1,8(sp)
    80005d08:	00013903          	ld	s2,0(sp)
    80005d0c:	02010113          	addi	sp,sp,32
    80005d10:	00008067          	ret

0000000080005d14 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005d14:	fe010113          	addi	sp,sp,-32
    80005d18:	00113c23          	sd	ra,24(sp)
    80005d1c:	00813823          	sd	s0,16(sp)
    80005d20:	00913423          	sd	s1,8(sp)
    80005d24:	01213023          	sd	s2,0(sp)
    80005d28:	02010413          	addi	s0,sp,32
    80005d2c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005d30:	02053503          	ld	a0,32(a0)
    80005d34:	ffffe097          	auipc	ra,0xffffe
    80005d38:	4b8080e7          	jalr	1208(ra) # 800041ec <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005d3c:	0284b503          	ld	a0,40(s1)
    80005d40:	ffffe097          	auipc	ra,0xffffe
    80005d44:	4ac080e7          	jalr	1196(ra) # 800041ec <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005d48:	0084b703          	ld	a4,8(s1)
    80005d4c:	0104a783          	lw	a5,16(s1)
    80005d50:	00279693          	slli	a3,a5,0x2
    80005d54:	00d70733          	add	a4,a4,a3
    80005d58:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005d5c:	0017879b          	addiw	a5,a5,1
    80005d60:	0004a703          	lw	a4,0(s1)
    80005d64:	02e7e7bb          	remw	a5,a5,a4
    80005d68:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005d6c:	0284b503          	ld	a0,40(s1)
    80005d70:	ffffe097          	auipc	ra,0xffffe
    80005d74:	500080e7          	jalr	1280(ra) # 80004270 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005d78:	0184b503          	ld	a0,24(s1)
    80005d7c:	ffffe097          	auipc	ra,0xffffe
    80005d80:	4f4080e7          	jalr	1268(ra) # 80004270 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005d84:	00090513          	mv	a0,s2
    80005d88:	01813083          	ld	ra,24(sp)
    80005d8c:	01013403          	ld	s0,16(sp)
    80005d90:	00813483          	ld	s1,8(sp)
    80005d94:	00013903          	ld	s2,0(sp)
    80005d98:	02010113          	addi	sp,sp,32
    80005d9c:	00008067          	ret

0000000080005da0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005da0:	fe010113          	addi	sp,sp,-32
    80005da4:	00113c23          	sd	ra,24(sp)
    80005da8:	00813823          	sd	s0,16(sp)
    80005dac:	00913423          	sd	s1,8(sp)
    80005db0:	01213023          	sd	s2,0(sp)
    80005db4:	02010413          	addi	s0,sp,32
    80005db8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005dbc:	02853503          	ld	a0,40(a0)
    80005dc0:	ffffe097          	auipc	ra,0xffffe
    80005dc4:	42c080e7          	jalr	1068(ra) # 800041ec <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005dc8:	0304b503          	ld	a0,48(s1)
    80005dcc:	ffffe097          	auipc	ra,0xffffe
    80005dd0:	420080e7          	jalr	1056(ra) # 800041ec <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005dd4:	0144a783          	lw	a5,20(s1)
    80005dd8:	0104a903          	lw	s2,16(s1)
    80005ddc:	0327ce63          	blt	a5,s2,80005e18 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005de0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005de4:	0304b503          	ld	a0,48(s1)
    80005de8:	ffffe097          	auipc	ra,0xffffe
    80005dec:	488080e7          	jalr	1160(ra) # 80004270 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005df0:	0284b503          	ld	a0,40(s1)
    80005df4:	ffffe097          	auipc	ra,0xffffe
    80005df8:	47c080e7          	jalr	1148(ra) # 80004270 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005dfc:	00090513          	mv	a0,s2
    80005e00:	01813083          	ld	ra,24(sp)
    80005e04:	01013403          	ld	s0,16(sp)
    80005e08:	00813483          	ld	s1,8(sp)
    80005e0c:	00013903          	ld	s2,0(sp)
    80005e10:	02010113          	addi	sp,sp,32
    80005e14:	00008067          	ret
        ret = cap - head + tail;
    80005e18:	0004a703          	lw	a4,0(s1)
    80005e1c:	4127093b          	subw	s2,a4,s2
    80005e20:	00f9093b          	addw	s2,s2,a5
    80005e24:	fc1ff06f          	j	80005de4 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005e28 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005e28:	fe010113          	addi	sp,sp,-32
    80005e2c:	00113c23          	sd	ra,24(sp)
    80005e30:	00813823          	sd	s0,16(sp)
    80005e34:	00913423          	sd	s1,8(sp)
    80005e38:	02010413          	addi	s0,sp,32
    80005e3c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005e40:	00a00513          	li	a0,10
    80005e44:	ffffe097          	auipc	ra,0xffffe
    80005e48:	48c080e7          	jalr	1164(ra) # 800042d0 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005e4c:	00003517          	auipc	a0,0x3
    80005e50:	6fc50513          	addi	a0,a0,1788 # 80009548 <CONSOLE_STATUS+0x538>
    80005e54:	00000097          	auipc	ra,0x0
    80005e58:	a20080e7          	jalr	-1504(ra) # 80005874 <_Z11printStringPKc>
    while (getCnt()) {
    80005e5c:	00048513          	mv	a0,s1
    80005e60:	00000097          	auipc	ra,0x0
    80005e64:	f40080e7          	jalr	-192(ra) # 80005da0 <_ZN9BufferCPP6getCntEv>
    80005e68:	02050c63          	beqz	a0,80005ea0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005e6c:	0084b783          	ld	a5,8(s1)
    80005e70:	0104a703          	lw	a4,16(s1)
    80005e74:	00271713          	slli	a4,a4,0x2
    80005e78:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005e7c:	0007c503          	lbu	a0,0(a5)
    80005e80:	ffffe097          	auipc	ra,0xffffe
    80005e84:	450080e7          	jalr	1104(ra) # 800042d0 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005e88:	0104a783          	lw	a5,16(s1)
    80005e8c:	0017879b          	addiw	a5,a5,1
    80005e90:	0004a703          	lw	a4,0(s1)
    80005e94:	02e7e7bb          	remw	a5,a5,a4
    80005e98:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005e9c:	fc1ff06f          	j	80005e5c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005ea0:	02100513          	li	a0,33
    80005ea4:	ffffe097          	auipc	ra,0xffffe
    80005ea8:	42c080e7          	jalr	1068(ra) # 800042d0 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005eac:	00a00513          	li	a0,10
    80005eb0:	ffffe097          	auipc	ra,0xffffe
    80005eb4:	420080e7          	jalr	1056(ra) # 800042d0 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005eb8:	0084b503          	ld	a0,8(s1)
    80005ebc:	ffffc097          	auipc	ra,0xffffc
    80005ec0:	45c080e7          	jalr	1116(ra) # 80002318 <_Z8mem_freePv>
    delete itemAvailable;
    80005ec4:	0204b503          	ld	a0,32(s1)
    80005ec8:	00050863          	beqz	a0,80005ed8 <_ZN9BufferCPPD1Ev+0xb0>
    80005ecc:	00053783          	ld	a5,0(a0)
    80005ed0:	0087b783          	ld	a5,8(a5)
    80005ed4:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005ed8:	0184b503          	ld	a0,24(s1)
    80005edc:	00050863          	beqz	a0,80005eec <_ZN9BufferCPPD1Ev+0xc4>
    80005ee0:	00053783          	ld	a5,0(a0)
    80005ee4:	0087b783          	ld	a5,8(a5)
    80005ee8:	000780e7          	jalr	a5
    delete mutexTail;
    80005eec:	0304b503          	ld	a0,48(s1)
    80005ef0:	00050863          	beqz	a0,80005f00 <_ZN9BufferCPPD1Ev+0xd8>
    80005ef4:	00053783          	ld	a5,0(a0)
    80005ef8:	0087b783          	ld	a5,8(a5)
    80005efc:	000780e7          	jalr	a5
    delete mutexHead;
    80005f00:	0284b503          	ld	a0,40(s1)
    80005f04:	00050863          	beqz	a0,80005f14 <_ZN9BufferCPPD1Ev+0xec>
    80005f08:	00053783          	ld	a5,0(a0)
    80005f0c:	0087b783          	ld	a5,8(a5)
    80005f10:	000780e7          	jalr	a5
}
    80005f14:	01813083          	ld	ra,24(sp)
    80005f18:	01013403          	ld	s0,16(sp)
    80005f1c:	00813483          	ld	s1,8(sp)
    80005f20:	02010113          	addi	sp,sp,32
    80005f24:	00008067          	ret

0000000080005f28 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80005f28:	fe010113          	addi	sp,sp,-32
    80005f2c:	00113c23          	sd	ra,24(sp)
    80005f30:	00813823          	sd	s0,16(sp)
    80005f34:	00913423          	sd	s1,8(sp)
    80005f38:	01213023          	sd	s2,0(sp)
    80005f3c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005f40:	00000913          	li	s2,0
    80005f44:	0380006f          	j	80005f7c <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005f48:	ffffc097          	auipc	ra,0xffffc
    80005f4c:	47c080e7          	jalr	1148(ra) # 800023c4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005f50:	00148493          	addi	s1,s1,1
    80005f54:	000027b7          	lui	a5,0x2
    80005f58:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005f5c:	0097ee63          	bltu	a5,s1,80005f78 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005f60:	00000713          	li	a4,0
    80005f64:	000077b7          	lui	a5,0x7
    80005f68:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005f6c:	fce7eee3          	bltu	a5,a4,80005f48 <_Z11workerBodyAPv+0x20>
    80005f70:	00170713          	addi	a4,a4,1
    80005f74:	ff1ff06f          	j	80005f64 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005f78:	00190913          	addi	s2,s2,1
    80005f7c:	00900793          	li	a5,9
    80005f80:	0527e063          	bltu	a5,s2,80005fc0 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005f84:	00003517          	auipc	a0,0x3
    80005f88:	5dc50513          	addi	a0,a0,1500 # 80009560 <CONSOLE_STATUS+0x550>
    80005f8c:	00000097          	auipc	ra,0x0
    80005f90:	8e8080e7          	jalr	-1816(ra) # 80005874 <_Z11printStringPKc>
    80005f94:	00000613          	li	a2,0
    80005f98:	00a00593          	li	a1,10
    80005f9c:	0009051b          	sext.w	a0,s2
    80005fa0:	00000097          	auipc	ra,0x0
    80005fa4:	a6c080e7          	jalr	-1428(ra) # 80005a0c <_Z8printIntiii>
    80005fa8:	00003517          	auipc	a0,0x3
    80005fac:	1d850513          	addi	a0,a0,472 # 80009180 <CONSOLE_STATUS+0x170>
    80005fb0:	00000097          	auipc	ra,0x0
    80005fb4:	8c4080e7          	jalr	-1852(ra) # 80005874 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005fb8:	00000493          	li	s1,0
    80005fbc:	f99ff06f          	j	80005f54 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80005fc0:	00003517          	auipc	a0,0x3
    80005fc4:	5a850513          	addi	a0,a0,1448 # 80009568 <CONSOLE_STATUS+0x558>
    80005fc8:	00000097          	auipc	ra,0x0
    80005fcc:	8ac080e7          	jalr	-1876(ra) # 80005874 <_Z11printStringPKc>
    finishedA = true;
    80005fd0:	00100793          	li	a5,1
    80005fd4:	0000e717          	auipc	a4,0xe
    80005fd8:	f8f70a23          	sb	a5,-108(a4) # 80013f68 <finishedA>
}
    80005fdc:	01813083          	ld	ra,24(sp)
    80005fe0:	01013403          	ld	s0,16(sp)
    80005fe4:	00813483          	ld	s1,8(sp)
    80005fe8:	00013903          	ld	s2,0(sp)
    80005fec:	02010113          	addi	sp,sp,32
    80005ff0:	00008067          	ret

0000000080005ff4 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80005ff4:	fe010113          	addi	sp,sp,-32
    80005ff8:	00113c23          	sd	ra,24(sp)
    80005ffc:	00813823          	sd	s0,16(sp)
    80006000:	00913423          	sd	s1,8(sp)
    80006004:	01213023          	sd	s2,0(sp)
    80006008:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000600c:	00000913          	li	s2,0
    80006010:	0380006f          	j	80006048 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80006014:	ffffc097          	auipc	ra,0xffffc
    80006018:	3b0080e7          	jalr	944(ra) # 800023c4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000601c:	00148493          	addi	s1,s1,1
    80006020:	000027b7          	lui	a5,0x2
    80006024:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006028:	0097ee63          	bltu	a5,s1,80006044 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000602c:	00000713          	li	a4,0
    80006030:	000077b7          	lui	a5,0x7
    80006034:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006038:	fce7eee3          	bltu	a5,a4,80006014 <_Z11workerBodyBPv+0x20>
    8000603c:	00170713          	addi	a4,a4,1
    80006040:	ff1ff06f          	j	80006030 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80006044:	00190913          	addi	s2,s2,1
    80006048:	00f00793          	li	a5,15
    8000604c:	0527e063          	bltu	a5,s2,8000608c <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80006050:	00003517          	auipc	a0,0x3
    80006054:	52850513          	addi	a0,a0,1320 # 80009578 <CONSOLE_STATUS+0x568>
    80006058:	00000097          	auipc	ra,0x0
    8000605c:	81c080e7          	jalr	-2020(ra) # 80005874 <_Z11printStringPKc>
    80006060:	00000613          	li	a2,0
    80006064:	00a00593          	li	a1,10
    80006068:	0009051b          	sext.w	a0,s2
    8000606c:	00000097          	auipc	ra,0x0
    80006070:	9a0080e7          	jalr	-1632(ra) # 80005a0c <_Z8printIntiii>
    80006074:	00003517          	auipc	a0,0x3
    80006078:	10c50513          	addi	a0,a0,268 # 80009180 <CONSOLE_STATUS+0x170>
    8000607c:	fffff097          	auipc	ra,0xfffff
    80006080:	7f8080e7          	jalr	2040(ra) # 80005874 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006084:	00000493          	li	s1,0
    80006088:	f99ff06f          	j	80006020 <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    8000608c:	ffffc097          	auipc	ra,0xffffc
    80006090:	338080e7          	jalr	824(ra) # 800023c4 <_Z15thread_dispatchv>
    printString("B finished!\n");
    80006094:	00003517          	auipc	a0,0x3
    80006098:	4ec50513          	addi	a0,a0,1260 # 80009580 <CONSOLE_STATUS+0x570>
    8000609c:	fffff097          	auipc	ra,0xfffff
    800060a0:	7d8080e7          	jalr	2008(ra) # 80005874 <_Z11printStringPKc>
    finishedB = true;
    800060a4:	00100793          	li	a5,1
    800060a8:	0000e717          	auipc	a4,0xe
    800060ac:	ecf700a3          	sb	a5,-319(a4) # 80013f69 <finishedB>
}
    800060b0:	01813083          	ld	ra,24(sp)
    800060b4:	01013403          	ld	s0,16(sp)
    800060b8:	00813483          	ld	s1,8(sp)
    800060bc:	00013903          	ld	s2,0(sp)
    800060c0:	02010113          	addi	sp,sp,32
    800060c4:	00008067          	ret

00000000800060c8 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    800060c8:	fe010113          	addi	sp,sp,-32
    800060cc:	00113c23          	sd	ra,24(sp)
    800060d0:	00813823          	sd	s0,16(sp)
    800060d4:	00913423          	sd	s1,8(sp)
    800060d8:	01213023          	sd	s2,0(sp)
    800060dc:	02010413          	addi	s0,sp,32
    800060e0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800060e4:	00100793          	li	a5,1
    800060e8:	02a7f863          	bgeu	a5,a0,80006118 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800060ec:	00a00793          	li	a5,10
    800060f0:	02f577b3          	remu	a5,a0,a5
    800060f4:	02078e63          	beqz	a5,80006130 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800060f8:	fff48513          	addi	a0,s1,-1
    800060fc:	00000097          	auipc	ra,0x0
    80006100:	fcc080e7          	jalr	-52(ra) # 800060c8 <_Z9fibonaccim>
    80006104:	00050913          	mv	s2,a0
    80006108:	ffe48513          	addi	a0,s1,-2
    8000610c:	00000097          	auipc	ra,0x0
    80006110:	fbc080e7          	jalr	-68(ra) # 800060c8 <_Z9fibonaccim>
    80006114:	00a90533          	add	a0,s2,a0
}
    80006118:	01813083          	ld	ra,24(sp)
    8000611c:	01013403          	ld	s0,16(sp)
    80006120:	00813483          	ld	s1,8(sp)
    80006124:	00013903          	ld	s2,0(sp)
    80006128:	02010113          	addi	sp,sp,32
    8000612c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006130:	ffffc097          	auipc	ra,0xffffc
    80006134:	294080e7          	jalr	660(ra) # 800023c4 <_Z15thread_dispatchv>
    80006138:	fc1ff06f          	j	800060f8 <_Z9fibonaccim+0x30>

000000008000613c <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    8000613c:	fe010113          	addi	sp,sp,-32
    80006140:	00113c23          	sd	ra,24(sp)
    80006144:	00813823          	sd	s0,16(sp)
    80006148:	00913423          	sd	s1,8(sp)
    8000614c:	01213023          	sd	s2,0(sp)
    80006150:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006154:	00000493          	li	s1,0
    80006158:	0400006f          	j	80006198 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000615c:	00003517          	auipc	a0,0x3
    80006160:	43450513          	addi	a0,a0,1076 # 80009590 <CONSOLE_STATUS+0x580>
    80006164:	fffff097          	auipc	ra,0xfffff
    80006168:	710080e7          	jalr	1808(ra) # 80005874 <_Z11printStringPKc>
    8000616c:	00000613          	li	a2,0
    80006170:	00a00593          	li	a1,10
    80006174:	00048513          	mv	a0,s1
    80006178:	00000097          	auipc	ra,0x0
    8000617c:	894080e7          	jalr	-1900(ra) # 80005a0c <_Z8printIntiii>
    80006180:	00003517          	auipc	a0,0x3
    80006184:	00050513          	mv	a0,a0
    80006188:	fffff097          	auipc	ra,0xfffff
    8000618c:	6ec080e7          	jalr	1772(ra) # 80005874 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006190:	0014849b          	addiw	s1,s1,1
    80006194:	0ff4f493          	andi	s1,s1,255
    80006198:	00200793          	li	a5,2
    8000619c:	fc97f0e3          	bgeu	a5,s1,8000615c <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    800061a0:	00003517          	auipc	a0,0x3
    800061a4:	3f850513          	addi	a0,a0,1016 # 80009598 <CONSOLE_STATUS+0x588>
    800061a8:	fffff097          	auipc	ra,0xfffff
    800061ac:	6cc080e7          	jalr	1740(ra) # 80005874 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800061b0:	00700313          	li	t1,7
    thread_dispatch();
    800061b4:	ffffc097          	auipc	ra,0xffffc
    800061b8:	210080e7          	jalr	528(ra) # 800023c4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800061bc:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800061c0:	00003517          	auipc	a0,0x3
    800061c4:	3e850513          	addi	a0,a0,1000 # 800095a8 <CONSOLE_STATUS+0x598>
    800061c8:	fffff097          	auipc	ra,0xfffff
    800061cc:	6ac080e7          	jalr	1708(ra) # 80005874 <_Z11printStringPKc>
    800061d0:	00000613          	li	a2,0
    800061d4:	00a00593          	li	a1,10
    800061d8:	0009051b          	sext.w	a0,s2
    800061dc:	00000097          	auipc	ra,0x0
    800061e0:	830080e7          	jalr	-2000(ra) # 80005a0c <_Z8printIntiii>
    800061e4:	00003517          	auipc	a0,0x3
    800061e8:	f9c50513          	addi	a0,a0,-100 # 80009180 <CONSOLE_STATUS+0x170>
    800061ec:	fffff097          	auipc	ra,0xfffff
    800061f0:	688080e7          	jalr	1672(ra) # 80005874 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800061f4:	00c00513          	li	a0,12
    800061f8:	00000097          	auipc	ra,0x0
    800061fc:	ed0080e7          	jalr	-304(ra) # 800060c8 <_Z9fibonaccim>
    80006200:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006204:	00003517          	auipc	a0,0x3
    80006208:	3ac50513          	addi	a0,a0,940 # 800095b0 <CONSOLE_STATUS+0x5a0>
    8000620c:	fffff097          	auipc	ra,0xfffff
    80006210:	668080e7          	jalr	1640(ra) # 80005874 <_Z11printStringPKc>
    80006214:	00000613          	li	a2,0
    80006218:	00a00593          	li	a1,10
    8000621c:	0009051b          	sext.w	a0,s2
    80006220:	fffff097          	auipc	ra,0xfffff
    80006224:	7ec080e7          	jalr	2028(ra) # 80005a0c <_Z8printIntiii>
    80006228:	00003517          	auipc	a0,0x3
    8000622c:	f5850513          	addi	a0,a0,-168 # 80009180 <CONSOLE_STATUS+0x170>
    80006230:	fffff097          	auipc	ra,0xfffff
    80006234:	644080e7          	jalr	1604(ra) # 80005874 <_Z11printStringPKc>
    80006238:	0400006f          	j	80006278 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000623c:	00003517          	auipc	a0,0x3
    80006240:	35450513          	addi	a0,a0,852 # 80009590 <CONSOLE_STATUS+0x580>
    80006244:	fffff097          	auipc	ra,0xfffff
    80006248:	630080e7          	jalr	1584(ra) # 80005874 <_Z11printStringPKc>
    8000624c:	00000613          	li	a2,0
    80006250:	00a00593          	li	a1,10
    80006254:	00048513          	mv	a0,s1
    80006258:	fffff097          	auipc	ra,0xfffff
    8000625c:	7b4080e7          	jalr	1972(ra) # 80005a0c <_Z8printIntiii>
    80006260:	00003517          	auipc	a0,0x3
    80006264:	f2050513          	addi	a0,a0,-224 # 80009180 <CONSOLE_STATUS+0x170>
    80006268:	fffff097          	auipc	ra,0xfffff
    8000626c:	60c080e7          	jalr	1548(ra) # 80005874 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006270:	0014849b          	addiw	s1,s1,1
    80006274:	0ff4f493          	andi	s1,s1,255
    80006278:	00500793          	li	a5,5
    8000627c:	fc97f0e3          	bgeu	a5,s1,8000623c <_Z11workerBodyCPv+0x100>
    }

    thread_dispatch();
    80006280:	ffffc097          	auipc	ra,0xffffc
    80006284:	144080e7          	jalr	324(ra) # 800023c4 <_Z15thread_dispatchv>
    printString("A finished!\n");
    80006288:	00003517          	auipc	a0,0x3
    8000628c:	2e050513          	addi	a0,a0,736 # 80009568 <CONSOLE_STATUS+0x558>
    80006290:	fffff097          	auipc	ra,0xfffff
    80006294:	5e4080e7          	jalr	1508(ra) # 80005874 <_Z11printStringPKc>
    finishedC = true;
    80006298:	00100793          	li	a5,1
    8000629c:	0000e717          	auipc	a4,0xe
    800062a0:	ccf70723          	sb	a5,-818(a4) # 80013f6a <finishedC>
}
    800062a4:	01813083          	ld	ra,24(sp)
    800062a8:	01013403          	ld	s0,16(sp)
    800062ac:	00813483          	ld	s1,8(sp)
    800062b0:	00013903          	ld	s2,0(sp)
    800062b4:	02010113          	addi	sp,sp,32
    800062b8:	00008067          	ret

00000000800062bc <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    800062bc:	fe010113          	addi	sp,sp,-32
    800062c0:	00113c23          	sd	ra,24(sp)
    800062c4:	00813823          	sd	s0,16(sp)
    800062c8:	00913423          	sd	s1,8(sp)
    800062cc:	01213023          	sd	s2,0(sp)
    800062d0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800062d4:	00a00493          	li	s1,10
    800062d8:	0400006f          	j	80006318 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800062dc:	00003517          	auipc	a0,0x3
    800062e0:	2e450513          	addi	a0,a0,740 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800062e4:	fffff097          	auipc	ra,0xfffff
    800062e8:	590080e7          	jalr	1424(ra) # 80005874 <_Z11printStringPKc>
    800062ec:	00000613          	li	a2,0
    800062f0:	00a00593          	li	a1,10
    800062f4:	00048513          	mv	a0,s1
    800062f8:	fffff097          	auipc	ra,0xfffff
    800062fc:	714080e7          	jalr	1812(ra) # 80005a0c <_Z8printIntiii>
    80006300:	00003517          	auipc	a0,0x3
    80006304:	e8050513          	addi	a0,a0,-384 # 80009180 <CONSOLE_STATUS+0x170>
    80006308:	fffff097          	auipc	ra,0xfffff
    8000630c:	56c080e7          	jalr	1388(ra) # 80005874 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006310:	0014849b          	addiw	s1,s1,1
    80006314:	0ff4f493          	andi	s1,s1,255
    80006318:	00c00793          	li	a5,12
    8000631c:	fc97f0e3          	bgeu	a5,s1,800062dc <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006320:	00003517          	auipc	a0,0x3
    80006324:	2a850513          	addi	a0,a0,680 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80006328:	fffff097          	auipc	ra,0xfffff
    8000632c:	54c080e7          	jalr	1356(ra) # 80005874 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006330:	00500313          	li	t1,5
    thread_dispatch();
    80006334:	ffffc097          	auipc	ra,0xffffc
    80006338:	090080e7          	jalr	144(ra) # 800023c4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000633c:	01000513          	li	a0,16
    80006340:	00000097          	auipc	ra,0x0
    80006344:	d88080e7          	jalr	-632(ra) # 800060c8 <_Z9fibonaccim>
    80006348:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000634c:	00003517          	auipc	a0,0x3
    80006350:	28c50513          	addi	a0,a0,652 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80006354:	fffff097          	auipc	ra,0xfffff
    80006358:	520080e7          	jalr	1312(ra) # 80005874 <_Z11printStringPKc>
    8000635c:	00000613          	li	a2,0
    80006360:	00a00593          	li	a1,10
    80006364:	0009051b          	sext.w	a0,s2
    80006368:	fffff097          	auipc	ra,0xfffff
    8000636c:	6a4080e7          	jalr	1700(ra) # 80005a0c <_Z8printIntiii>
    80006370:	00003517          	auipc	a0,0x3
    80006374:	e1050513          	addi	a0,a0,-496 # 80009180 <CONSOLE_STATUS+0x170>
    80006378:	fffff097          	auipc	ra,0xfffff
    8000637c:	4fc080e7          	jalr	1276(ra) # 80005874 <_Z11printStringPKc>
    80006380:	0400006f          	j	800063c0 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006384:	00003517          	auipc	a0,0x3
    80006388:	23c50513          	addi	a0,a0,572 # 800095c0 <CONSOLE_STATUS+0x5b0>
    8000638c:	fffff097          	auipc	ra,0xfffff
    80006390:	4e8080e7          	jalr	1256(ra) # 80005874 <_Z11printStringPKc>
    80006394:	00000613          	li	a2,0
    80006398:	00a00593          	li	a1,10
    8000639c:	00048513          	mv	a0,s1
    800063a0:	fffff097          	auipc	ra,0xfffff
    800063a4:	66c080e7          	jalr	1644(ra) # 80005a0c <_Z8printIntiii>
    800063a8:	00003517          	auipc	a0,0x3
    800063ac:	dd850513          	addi	a0,a0,-552 # 80009180 <CONSOLE_STATUS+0x170>
    800063b0:	fffff097          	auipc	ra,0xfffff
    800063b4:	4c4080e7          	jalr	1220(ra) # 80005874 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800063b8:	0014849b          	addiw	s1,s1,1
    800063bc:	0ff4f493          	andi	s1,s1,255
    800063c0:	00f00793          	li	a5,15
    800063c4:	fc97f0e3          	bgeu	a5,s1,80006384 <_Z11workerBodyDPv+0xc8>
    }

    thread_dispatch();
    800063c8:	ffffc097          	auipc	ra,0xffffc
    800063cc:	ffc080e7          	jalr	-4(ra) # 800023c4 <_Z15thread_dispatchv>
    printString("D finished!\n");
    800063d0:	00003517          	auipc	a0,0x3
    800063d4:	21850513          	addi	a0,a0,536 # 800095e8 <CONSOLE_STATUS+0x5d8>
    800063d8:	fffff097          	auipc	ra,0xfffff
    800063dc:	49c080e7          	jalr	1180(ra) # 80005874 <_Z11printStringPKc>
    finishedD = true;
    800063e0:	00100793          	li	a5,1
    800063e4:	0000e717          	auipc	a4,0xe
    800063e8:	b8f703a3          	sb	a5,-1145(a4) # 80013f6b <finishedD>
}
    800063ec:	01813083          	ld	ra,24(sp)
    800063f0:	01013403          	ld	s0,16(sp)
    800063f4:	00813483          	ld	s1,8(sp)
    800063f8:	00013903          	ld	s2,0(sp)
    800063fc:	02010113          	addi	sp,sp,32
    80006400:	00008067          	ret

0000000080006404 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80006404:	fc010113          	addi	sp,sp,-64
    80006408:	02113c23          	sd	ra,56(sp)
    8000640c:	02813823          	sd	s0,48(sp)
    80006410:	02913423          	sd	s1,40(sp)
    80006414:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006418:	00000613          	li	a2,0
    8000641c:	00000597          	auipc	a1,0x0
    80006420:	b0c58593          	addi	a1,a1,-1268 # 80005f28 <_Z11workerBodyAPv>
    80006424:	fc040513          	addi	a0,s0,-64
    80006428:	ffffc097          	auipc	ra,0xffffc
    8000642c:	f1c080e7          	jalr	-228(ra) # 80002344 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80006430:	00003517          	auipc	a0,0x3
    80006434:	1c850513          	addi	a0,a0,456 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80006438:	fffff097          	auipc	ra,0xfffff
    8000643c:	43c080e7          	jalr	1084(ra) # 80005874 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006440:	00000613          	li	a2,0
    80006444:	00000597          	auipc	a1,0x0
    80006448:	bb058593          	addi	a1,a1,-1104 # 80005ff4 <_Z11workerBodyBPv>
    8000644c:	fc840513          	addi	a0,s0,-56
    80006450:	ffffc097          	auipc	ra,0xffffc
    80006454:	ef4080e7          	jalr	-268(ra) # 80002344 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80006458:	00003517          	auipc	a0,0x3
    8000645c:	1b850513          	addi	a0,a0,440 # 80009610 <CONSOLE_STATUS+0x600>
    80006460:	fffff097          	auipc	ra,0xfffff
    80006464:	414080e7          	jalr	1044(ra) # 80005874 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006468:	00000613          	li	a2,0
    8000646c:	00000597          	auipc	a1,0x0
    80006470:	cd058593          	addi	a1,a1,-816 # 8000613c <_Z11workerBodyCPv>
    80006474:	fd040513          	addi	a0,s0,-48
    80006478:	ffffc097          	auipc	ra,0xffffc
    8000647c:	ecc080e7          	jalr	-308(ra) # 80002344 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80006480:	00003517          	auipc	a0,0x3
    80006484:	1a850513          	addi	a0,a0,424 # 80009628 <CONSOLE_STATUS+0x618>
    80006488:	fffff097          	auipc	ra,0xfffff
    8000648c:	3ec080e7          	jalr	1004(ra) # 80005874 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006490:	00000613          	li	a2,0
    80006494:	00000597          	auipc	a1,0x0
    80006498:	e2858593          	addi	a1,a1,-472 # 800062bc <_Z11workerBodyDPv>
    8000649c:	fd840513          	addi	a0,s0,-40
    800064a0:	ffffc097          	auipc	ra,0xffffc
    800064a4:	ea4080e7          	jalr	-348(ra) # 80002344 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    800064a8:	00003517          	auipc	a0,0x3
    800064ac:	19850513          	addi	a0,a0,408 # 80009640 <CONSOLE_STATUS+0x630>
    800064b0:	fffff097          	auipc	ra,0xfffff
    800064b4:	3c4080e7          	jalr	964(ra) # 80005874 <_Z11printStringPKc>
    800064b8:	00c0006f          	j	800064c4 <_Z18Threads_C_API_testv+0xc0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800064bc:	ffffc097          	auipc	ra,0xffffc
    800064c0:	f08080e7          	jalr	-248(ra) # 800023c4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800064c4:	0000e797          	auipc	a5,0xe
    800064c8:	aa47c783          	lbu	a5,-1372(a5) # 80013f68 <finishedA>
    800064cc:	fe0788e3          	beqz	a5,800064bc <_Z18Threads_C_API_testv+0xb8>
    800064d0:	0000e797          	auipc	a5,0xe
    800064d4:	a997c783          	lbu	a5,-1383(a5) # 80013f69 <finishedB>
    800064d8:	fe0782e3          	beqz	a5,800064bc <_Z18Threads_C_API_testv+0xb8>
    800064dc:	0000e797          	auipc	a5,0xe
    800064e0:	a8e7c783          	lbu	a5,-1394(a5) # 80013f6a <finishedC>
    800064e4:	fc078ce3          	beqz	a5,800064bc <_Z18Threads_C_API_testv+0xb8>
    800064e8:	0000e797          	auipc	a5,0xe
    800064ec:	a837c783          	lbu	a5,-1405(a5) # 80013f6b <finishedD>
    800064f0:	fc0786e3          	beqz	a5,800064bc <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) { delete thread; }
    800064f4:	fc040493          	addi	s1,s0,-64
    800064f8:	0080006f          	j	80006500 <_Z18Threads_C_API_testv+0xfc>
    800064fc:	00848493          	addi	s1,s1,8
    80006500:	fe040793          	addi	a5,s0,-32
    80006504:	00f48c63          	beq	s1,a5,8000651c <_Z18Threads_C_API_testv+0x118>
    80006508:	0004b503          	ld	a0,0(s1)
    8000650c:	fe0508e3          	beqz	a0,800064fc <_Z18Threads_C_API_testv+0xf8>
    80006510:	ffffc097          	auipc	ra,0xffffc
    80006514:	130080e7          	jalr	304(ra) # 80002640 <_ZN7_threaddlEPv>
    80006518:	fe5ff06f          	j	800064fc <_Z18Threads_C_API_testv+0xf8>
}
    8000651c:	03813083          	ld	ra,56(sp)
    80006520:	03013403          	ld	s0,48(sp)
    80006524:	02813483          	ld	s1,40(sp)
    80006528:	04010113          	addi	sp,sp,64
    8000652c:	00008067          	ret

0000000080006530 <_Z12userMainTestv>:
    long id;
    bool finished;
};


void userMainTest() {
    80006530:	fc010113          	addi	sp,sp,-64
    80006534:	02113c23          	sd	ra,56(sp)
    80006538:	02813823          	sd	s0,48(sp)
    8000653c:	02913423          	sd	s1,40(sp)
    80006540:	04010413          	addi	s0,sp,64
    ForkThread(long _id) noexcept : Thread(), id(_id), finished(false) {}
    80006544:	fc040493          	addi	s1,s0,-64
    80006548:	00048513          	mv	a0,s1
    8000654c:	ffffe097          	auipc	ra,0xffffe
    80006550:	c58080e7          	jalr	-936(ra) # 800041a4 <_ZN6ThreadC1Ev>
    80006554:	00006797          	auipc	a5,0x6
    80006558:	84c78793          	addi	a5,a5,-1972 # 8000bda0 <_ZTV10ForkThread+0x10>
    8000655c:	fcf43023          	sd	a5,-64(s0)
    80006560:	00100793          	li	a5,1
    80006564:	fcf43823          	sd	a5,-48(s0)
    80006568:	fc040c23          	sb	zero,-40(s0)
    ForkThread thread(1);

    thread.start();
    8000656c:	00048513          	mv	a0,s1
    80006570:	ffffe097          	auipc	ra,0xffffe
    80006574:	b30080e7          	jalr	-1232(ra) # 800040a0 <_ZN6Thread5startEv>
        return finished;
    80006578:	fd844783          	lbu	a5,-40(s0)

    while (!thread.isFinished()) {
    8000657c:	00079863          	bnez	a5,8000658c <_Z12userMainTestv+0x5c>
        thread_dispatch();
    80006580:	ffffc097          	auipc	ra,0xffffc
    80006584:	e44080e7          	jalr	-444(ra) # 800023c4 <_Z15thread_dispatchv>
    80006588:	ff1ff06f          	j	80006578 <_Z12userMainTestv+0x48>
    }

    printString("User main finished\n");
    8000658c:	00003517          	auipc	a0,0x3
    80006590:	0cc50513          	addi	a0,a0,204 # 80009658 <CONSOLE_STATUS+0x648>
    80006594:	fffff097          	auipc	ra,0xfffff
    80006598:	2e0080e7          	jalr	736(ra) # 80005874 <_Z11printStringPKc>
class ForkThread : public Thread {
    8000659c:	00006797          	auipc	a5,0x6
    800065a0:	80478793          	addi	a5,a5,-2044 # 8000bda0 <_ZTV10ForkThread+0x10>
    800065a4:	fcf43023          	sd	a5,-64(s0)
    800065a8:	fc040513          	addi	a0,s0,-64
    800065ac:	ffffe097          	auipc	ra,0xffffe
    800065b0:	9a4080e7          	jalr	-1628(ra) # 80003f50 <_ZN6ThreadD1Ev>
}
    800065b4:	03813083          	ld	ra,56(sp)
    800065b8:	03013403          	ld	s0,48(sp)
    800065bc:	02813483          	ld	s1,40(sp)
    800065c0:	04010113          	addi	sp,sp,64
    800065c4:	00008067          	ret
    800065c8:	00050493          	mv	s1,a0
class ForkThread : public Thread {
    800065cc:	00005797          	auipc	a5,0x5
    800065d0:	7d478793          	addi	a5,a5,2004 # 8000bda0 <_ZTV10ForkThread+0x10>
    800065d4:	fcf43023          	sd	a5,-64(s0)
    800065d8:	fc040513          	addi	a0,s0,-64
    800065dc:	ffffe097          	auipc	ra,0xffffe
    800065e0:	974080e7          	jalr	-1676(ra) # 80003f50 <_ZN6ThreadD1Ev>
    800065e4:	00048513          	mv	a0,s1
    800065e8:	0000f097          	auipc	ra,0xf
    800065ec:	a50080e7          	jalr	-1456(ra) # 80015038 <_Unwind_Resume>

00000000800065f0 <_Z8userMainv>:
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

#include "test1OS2.hpp"

void userMain()
{
    800065f0:	ff010113          	addi	sp,sp,-16
    800065f4:	00113423          	sd	ra,8(sp)
    800065f8:	00813023          	sd	s0,0(sp)
    800065fc:	01010413          	addi	s0,sp,16
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    userMainTest();
    80006600:	00000097          	auipc	ra,0x0
    80006604:	f30080e7          	jalr	-208(ra) # 80006530 <_Z12userMainTestv>
    80006608:	00813083          	ld	ra,8(sp)
    8000660c:	00013403          	ld	s0,0(sp)
    80006610:	01010113          	addi	sp,sp,16
    80006614:	00008067          	ret

0000000080006618 <_ZN10ForkThread3runEv>:
    virtual void run() {
    80006618:	fc010113          	addi	sp,sp,-64
    8000661c:	02113c23          	sd	ra,56(sp)
    80006620:	02813823          	sd	s0,48(sp)
    80006624:	02913423          	sd	s1,40(sp)
    80006628:	03213023          	sd	s2,32(sp)
    8000662c:	01313c23          	sd	s3,24(sp)
    80006630:	01413823          	sd	s4,16(sp)
    80006634:	01513423          	sd	s5,8(sp)
    80006638:	01613023          	sd	s6,0(sp)
    8000663c:	04010413          	addi	s0,sp,64
    80006640:	00050a13          	mv	s4,a0
        printString("Started thread id:");
    80006644:	00003517          	auipc	a0,0x3
    80006648:	02c50513          	addi	a0,a0,44 # 80009670 <CONSOLE_STATUS+0x660>
    8000664c:	fffff097          	auipc	ra,0xfffff
    80006650:	228080e7          	jalr	552(ra) # 80005874 <_Z11printStringPKc>
        printInt(id);
    80006654:	00000613          	li	a2,0
    80006658:	00a00593          	li	a1,10
    8000665c:	010a2503          	lw	a0,16(s4)
    80006660:	fffff097          	auipc	ra,0xfffff
    80006664:	3ac080e7          	jalr	940(ra) # 80005a0c <_Z8printIntiii>
        printString("\n");
    80006668:	00003517          	auipc	a0,0x3
    8000666c:	b1850513          	addi	a0,a0,-1256 # 80009180 <CONSOLE_STATUS+0x170>
    80006670:	fffff097          	auipc	ra,0xfffff
    80006674:	204080e7          	jalr	516(ra) # 80005874 <_Z11printStringPKc>
        ForkThread* thread = new ForkThread(id + 1);
    80006678:	02000513          	li	a0,32
    8000667c:	ffffe097          	auipc	ra,0xffffe
    80006680:	954080e7          	jalr	-1708(ra) # 80003fd0 <_Znwm>
    80006684:	00050993          	mv	s3,a0
    80006688:	02050463          	beqz	a0,800066b0 <_ZN10ForkThread3runEv+0x98>
    8000668c:	010a3483          	ld	s1,16(s4)
    80006690:	00148493          	addi	s1,s1,1
    ForkThread(long _id) noexcept : Thread(), id(_id), finished(false) {}
    80006694:	ffffe097          	auipc	ra,0xffffe
    80006698:	b10080e7          	jalr	-1264(ra) # 800041a4 <_ZN6ThreadC1Ev>
    8000669c:	00005797          	auipc	a5,0x5
    800066a0:	70478793          	addi	a5,a5,1796 # 8000bda0 <_ZTV10ForkThread+0x10>
    800066a4:	00f9b023          	sd	a5,0(s3)
    800066a8:	0099b823          	sd	s1,16(s3)
    800066ac:	00098c23          	sb	zero,24(s3)
        ForkThread** threads = (ForkThread** ) mem_alloc(sizeof(ForkThread*) * id);
    800066b0:	010a3503          	ld	a0,16(s4)
    800066b4:	00351513          	slli	a0,a0,0x3
    800066b8:	ffffc097          	auipc	ra,0xffffc
    800066bc:	c30080e7          	jalr	-976(ra) # 800022e8 <_Z9mem_allocm>
    800066c0:	00050a93          	mv	s5,a0
        if (threads != nullptr) {
    800066c4:	10050863          	beqz	a0,800067d4 <_ZN10ForkThread3runEv+0x1bc>
            for (long i = 0; i < id; i++) {
    800066c8:	00000913          	li	s2,0
    800066cc:	0140006f          	j	800066e0 <_ZN10ForkThread3runEv+0xc8>
                threads[i] = new ForkThread(id);
    800066d0:	00391793          	slli	a5,s2,0x3
    800066d4:	00fa87b3          	add	a5,s5,a5
    800066d8:	0097b023          	sd	s1,0(a5)
            for (long i = 0; i < id; i++) {
    800066dc:	00190913          	addi	s2,s2,1
    800066e0:	010a3783          	ld	a5,16(s4)
    800066e4:	02f95e63          	bge	s2,a5,80006720 <_ZN10ForkThread3runEv+0x108>
                threads[i] = new ForkThread(id);
    800066e8:	02000513          	li	a0,32
    800066ec:	ffffe097          	auipc	ra,0xffffe
    800066f0:	8e4080e7          	jalr	-1820(ra) # 80003fd0 <_Znwm>
    800066f4:	00050493          	mv	s1,a0
    800066f8:	fc050ce3          	beqz	a0,800066d0 <_ZN10ForkThread3runEv+0xb8>
    800066fc:	010a3b03          	ld	s6,16(s4)
    ForkThread(long _id) noexcept : Thread(), id(_id), finished(false) {}
    80006700:	ffffe097          	auipc	ra,0xffffe
    80006704:	aa4080e7          	jalr	-1372(ra) # 800041a4 <_ZN6ThreadC1Ev>
    80006708:	00005797          	auipc	a5,0x5
    8000670c:	69878793          	addi	a5,a5,1688 # 8000bda0 <_ZTV10ForkThread+0x10>
    80006710:	00f4b023          	sd	a5,0(s1)
    80006714:	0164b823          	sd	s6,16(s1)
    80006718:	00048c23          	sb	zero,24(s1)
    8000671c:	fb5ff06f          	j	800066d0 <_ZN10ForkThread3runEv+0xb8>
            if (thread != nullptr) {
    80006720:	06098a63          	beqz	s3,80006794 <_ZN10ForkThread3runEv+0x17c>
                if (thread->start() == 0) {
    80006724:	00098513          	mv	a0,s3
    80006728:	ffffe097          	auipc	ra,0xffffe
    8000672c:	978080e7          	jalr	-1672(ra) # 800040a0 <_ZN6Thread5startEv>
    80006730:	00050913          	mv	s2,a0
    80006734:	04051863          	bnez	a0,80006784 <_ZN10ForkThread3runEv+0x16c>
                    for (int i = 0; i < 5000; i++) {
    80006738:	00050493          	mv	s1,a0
    8000673c:	0100006f          	j	8000674c <_ZN10ForkThread3runEv+0x134>
                        thread_dispatch();
    80006740:	ffffc097          	auipc	ra,0xffffc
    80006744:	c84080e7          	jalr	-892(ra) # 800023c4 <_Z15thread_dispatchv>
                    for (int i = 0; i < 5000; i++) {
    80006748:	0014849b          	addiw	s1,s1,1
    8000674c:	000017b7          	lui	a5,0x1
    80006750:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80006754:	0097ce63          	blt	a5,s1,80006770 <_ZN10ForkThread3runEv+0x158>
                        for (int j = 0; j < 5000; j++) {
    80006758:	00090713          	mv	a4,s2
    8000675c:	000017b7          	lui	a5,0x1
    80006760:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80006764:	fce7cee3          	blt	a5,a4,80006740 <_ZN10ForkThread3runEv+0x128>
    80006768:	0017071b          	addiw	a4,a4,1
    8000676c:	ff1ff06f          	j	8000675c <_ZN10ForkThread3runEv+0x144>
        return finished;
    80006770:	0189c783          	lbu	a5,24(s3)
                    while (!thread->isFinished()) {
    80006774:	00079863          	bnez	a5,80006784 <_ZN10ForkThread3runEv+0x16c>
                        thread_dispatch();
    80006778:	ffffc097          	auipc	ra,0xffffc
    8000677c:	c4c080e7          	jalr	-948(ra) # 800023c4 <_Z15thread_dispatchv>
                    while (!thread->isFinished()) {
    80006780:	ff1ff06f          	j	80006770 <_ZN10ForkThread3runEv+0x158>
                delete thread;
    80006784:	0009b783          	ld	a5,0(s3)
    80006788:	0087b783          	ld	a5,8(a5)
    8000678c:	00098513          	mv	a0,s3
    80006790:	000780e7          	jalr	a5
                        for (int j = 0; j < 5000; j++) {
    80006794:	00000493          	li	s1,0
    80006798:	0080006f          	j	800067a0 <_ZN10ForkThread3runEv+0x188>
            for (long i = 0; i < id; i++) {
    8000679c:	00148493          	addi	s1,s1,1
    800067a0:	010a3783          	ld	a5,16(s4)
    800067a4:	02f4d263          	bge	s1,a5,800067c8 <_ZN10ForkThread3runEv+0x1b0>
                delete threads[i];
    800067a8:	00349793          	slli	a5,s1,0x3
    800067ac:	00fa87b3          	add	a5,s5,a5
    800067b0:	0007b503          	ld	a0,0(a5)
    800067b4:	fe0504e3          	beqz	a0,8000679c <_ZN10ForkThread3runEv+0x184>
    800067b8:	00053783          	ld	a5,0(a0)
    800067bc:	0087b783          	ld	a5,8(a5)
    800067c0:	000780e7          	jalr	a5
    800067c4:	fd9ff06f          	j	8000679c <_ZN10ForkThread3runEv+0x184>
            mem_free(threads);
    800067c8:	000a8513          	mv	a0,s5
    800067cc:	ffffc097          	auipc	ra,0xffffc
    800067d0:	b4c080e7          	jalr	-1204(ra) # 80002318 <_Z8mem_freePv>
        printString("Finished thread id:");
    800067d4:	00003517          	auipc	a0,0x3
    800067d8:	eb450513          	addi	a0,a0,-332 # 80009688 <CONSOLE_STATUS+0x678>
    800067dc:	fffff097          	auipc	ra,0xfffff
    800067e0:	098080e7          	jalr	152(ra) # 80005874 <_Z11printStringPKc>
        printInt(id);
    800067e4:	00000613          	li	a2,0
    800067e8:	00a00593          	li	a1,10
    800067ec:	010a2503          	lw	a0,16(s4)
    800067f0:	fffff097          	auipc	ra,0xfffff
    800067f4:	21c080e7          	jalr	540(ra) # 80005a0c <_Z8printIntiii>
        printString("\n");
    800067f8:	00003517          	auipc	a0,0x3
    800067fc:	98850513          	addi	a0,a0,-1656 # 80009180 <CONSOLE_STATUS+0x170>
    80006800:	fffff097          	auipc	ra,0xfffff
    80006804:	074080e7          	jalr	116(ra) # 80005874 <_Z11printStringPKc>
        finished = true;
    80006808:	00100793          	li	a5,1
    8000680c:	00fa0c23          	sb	a5,24(s4)
    }
    80006810:	03813083          	ld	ra,56(sp)
    80006814:	03013403          	ld	s0,48(sp)
    80006818:	02813483          	ld	s1,40(sp)
    8000681c:	02013903          	ld	s2,32(sp)
    80006820:	01813983          	ld	s3,24(sp)
    80006824:	01013a03          	ld	s4,16(sp)
    80006828:	00813a83          	ld	s5,8(sp)
    8000682c:	00013b03          	ld	s6,0(sp)
    80006830:	04010113          	addi	sp,sp,64
    80006834:	00008067          	ret

0000000080006838 <_ZN10ForkThreadD1Ev>:
class ForkThread : public Thread {
    80006838:	ff010113          	addi	sp,sp,-16
    8000683c:	00113423          	sd	ra,8(sp)
    80006840:	00813023          	sd	s0,0(sp)
    80006844:	01010413          	addi	s0,sp,16
    80006848:	00005797          	auipc	a5,0x5
    8000684c:	55878793          	addi	a5,a5,1368 # 8000bda0 <_ZTV10ForkThread+0x10>
    80006850:	00f53023          	sd	a5,0(a0)
    80006854:	ffffd097          	auipc	ra,0xffffd
    80006858:	6fc080e7          	jalr	1788(ra) # 80003f50 <_ZN6ThreadD1Ev>
    8000685c:	00813083          	ld	ra,8(sp)
    80006860:	00013403          	ld	s0,0(sp)
    80006864:	01010113          	addi	sp,sp,16
    80006868:	00008067          	ret

000000008000686c <_ZN10ForkThreadD0Ev>:
    8000686c:	fe010113          	addi	sp,sp,-32
    80006870:	00113c23          	sd	ra,24(sp)
    80006874:	00813823          	sd	s0,16(sp)
    80006878:	00913423          	sd	s1,8(sp)
    8000687c:	02010413          	addi	s0,sp,32
    80006880:	00050493          	mv	s1,a0
    80006884:	00005797          	auipc	a5,0x5
    80006888:	51c78793          	addi	a5,a5,1308 # 8000bda0 <_ZTV10ForkThread+0x10>
    8000688c:	00f53023          	sd	a5,0(a0)
    80006890:	ffffd097          	auipc	ra,0xffffd
    80006894:	6c0080e7          	jalr	1728(ra) # 80003f50 <_ZN6ThreadD1Ev>
    80006898:	00048513          	mv	a0,s1
    8000689c:	ffffd097          	auipc	ra,0xffffd
    800068a0:	75c080e7          	jalr	1884(ra) # 80003ff8 <_ZdlPv>
    800068a4:	01813083          	ld	ra,24(sp)
    800068a8:	01013403          	ld	s0,16(sp)
    800068ac:	00813483          	ld	s1,8(sp)
    800068b0:	02010113          	addi	sp,sp,32
    800068b4:	00008067          	ret

00000000800068b8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800068b8:	fe010113          	addi	sp,sp,-32
    800068bc:	00113c23          	sd	ra,24(sp)
    800068c0:	00813823          	sd	s0,16(sp)
    800068c4:	00913423          	sd	s1,8(sp)
    800068c8:	01213023          	sd	s2,0(sp)
    800068cc:	02010413          	addi	s0,sp,32
    800068d0:	00050493          	mv	s1,a0
    800068d4:	00058913          	mv	s2,a1
    800068d8:	0015879b          	addiw	a5,a1,1
    800068dc:	0007851b          	sext.w	a0,a5
    800068e0:	00f4a023          	sw	a5,0(s1)
    800068e4:	0004a823          	sw	zero,16(s1)
    800068e8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800068ec:	00251513          	slli	a0,a0,0x2
    800068f0:	ffffc097          	auipc	ra,0xffffc
    800068f4:	9f8080e7          	jalr	-1544(ra) # 800022e8 <_Z9mem_allocm>
    800068f8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800068fc:	00000593          	li	a1,0
    80006900:	02048513          	addi	a0,s1,32
    80006904:	ffffc097          	auipc	ra,0xffffc
    80006908:	b08080e7          	jalr	-1272(ra) # 8000240c <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    8000690c:	00090593          	mv	a1,s2
    80006910:	01848513          	addi	a0,s1,24
    80006914:	ffffc097          	auipc	ra,0xffffc
    80006918:	af8080e7          	jalr	-1288(ra) # 8000240c <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    8000691c:	00100593          	li	a1,1
    80006920:	02848513          	addi	a0,s1,40
    80006924:	ffffc097          	auipc	ra,0xffffc
    80006928:	ae8080e7          	jalr	-1304(ra) # 8000240c <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    8000692c:	00100593          	li	a1,1
    80006930:	03048513          	addi	a0,s1,48
    80006934:	ffffc097          	auipc	ra,0xffffc
    80006938:	ad8080e7          	jalr	-1320(ra) # 8000240c <_Z8sem_openPP4_semj>
}
    8000693c:	01813083          	ld	ra,24(sp)
    80006940:	01013403          	ld	s0,16(sp)
    80006944:	00813483          	ld	s1,8(sp)
    80006948:	00013903          	ld	s2,0(sp)
    8000694c:	02010113          	addi	sp,sp,32
    80006950:	00008067          	ret

0000000080006954 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006954:	fe010113          	addi	sp,sp,-32
    80006958:	00113c23          	sd	ra,24(sp)
    8000695c:	00813823          	sd	s0,16(sp)
    80006960:	00913423          	sd	s1,8(sp)
    80006964:	01213023          	sd	s2,0(sp)
    80006968:	02010413          	addi	s0,sp,32
    8000696c:	00050493          	mv	s1,a0
    80006970:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006974:	01853503          	ld	a0,24(a0)
    80006978:	ffffc097          	auipc	ra,0xffffc
    8000697c:	af8080e7          	jalr	-1288(ra) # 80002470 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006980:	0304b503          	ld	a0,48(s1)
    80006984:	ffffc097          	auipc	ra,0xffffc
    80006988:	aec080e7          	jalr	-1300(ra) # 80002470 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    8000698c:	0084b783          	ld	a5,8(s1)
    80006990:	0144a703          	lw	a4,20(s1)
    80006994:	00271713          	slli	a4,a4,0x2
    80006998:	00e787b3          	add	a5,a5,a4
    8000699c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800069a0:	0144a783          	lw	a5,20(s1)
    800069a4:	0017879b          	addiw	a5,a5,1
    800069a8:	0004a703          	lw	a4,0(s1)
    800069ac:	02e7e7bb          	remw	a5,a5,a4
    800069b0:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800069b4:	0304b503          	ld	a0,48(s1)
    800069b8:	ffffc097          	auipc	ra,0xffffc
    800069bc:	ae4080e7          	jalr	-1308(ra) # 8000249c <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    800069c0:	0204b503          	ld	a0,32(s1)
    800069c4:	ffffc097          	auipc	ra,0xffffc
    800069c8:	ad8080e7          	jalr	-1320(ra) # 8000249c <_Z10sem_signalP4_sem>

}
    800069cc:	01813083          	ld	ra,24(sp)
    800069d0:	01013403          	ld	s0,16(sp)
    800069d4:	00813483          	ld	s1,8(sp)
    800069d8:	00013903          	ld	s2,0(sp)
    800069dc:	02010113          	addi	sp,sp,32
    800069e0:	00008067          	ret

00000000800069e4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800069e4:	fe010113          	addi	sp,sp,-32
    800069e8:	00113c23          	sd	ra,24(sp)
    800069ec:	00813823          	sd	s0,16(sp)
    800069f0:	00913423          	sd	s1,8(sp)
    800069f4:	01213023          	sd	s2,0(sp)
    800069f8:	02010413          	addi	s0,sp,32
    800069fc:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006a00:	02053503          	ld	a0,32(a0)
    80006a04:	ffffc097          	auipc	ra,0xffffc
    80006a08:	a6c080e7          	jalr	-1428(ra) # 80002470 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006a0c:	0284b503          	ld	a0,40(s1)
    80006a10:	ffffc097          	auipc	ra,0xffffc
    80006a14:	a60080e7          	jalr	-1440(ra) # 80002470 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006a18:	0084b703          	ld	a4,8(s1)
    80006a1c:	0104a783          	lw	a5,16(s1)
    80006a20:	00279693          	slli	a3,a5,0x2
    80006a24:	00d70733          	add	a4,a4,a3
    80006a28:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006a2c:	0017879b          	addiw	a5,a5,1
    80006a30:	0004a703          	lw	a4,0(s1)
    80006a34:	02e7e7bb          	remw	a5,a5,a4
    80006a38:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006a3c:	0284b503          	ld	a0,40(s1)
    80006a40:	ffffc097          	auipc	ra,0xffffc
    80006a44:	a5c080e7          	jalr	-1444(ra) # 8000249c <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006a48:	0184b503          	ld	a0,24(s1)
    80006a4c:	ffffc097          	auipc	ra,0xffffc
    80006a50:	a50080e7          	jalr	-1456(ra) # 8000249c <_Z10sem_signalP4_sem>

    return ret;
}
    80006a54:	00090513          	mv	a0,s2
    80006a58:	01813083          	ld	ra,24(sp)
    80006a5c:	01013403          	ld	s0,16(sp)
    80006a60:	00813483          	ld	s1,8(sp)
    80006a64:	00013903          	ld	s2,0(sp)
    80006a68:	02010113          	addi	sp,sp,32
    80006a6c:	00008067          	ret

0000000080006a70 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006a70:	fe010113          	addi	sp,sp,-32
    80006a74:	00113c23          	sd	ra,24(sp)
    80006a78:	00813823          	sd	s0,16(sp)
    80006a7c:	00913423          	sd	s1,8(sp)
    80006a80:	01213023          	sd	s2,0(sp)
    80006a84:	02010413          	addi	s0,sp,32
    80006a88:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006a8c:	02853503          	ld	a0,40(a0)
    80006a90:	ffffc097          	auipc	ra,0xffffc
    80006a94:	9e0080e7          	jalr	-1568(ra) # 80002470 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006a98:	0304b503          	ld	a0,48(s1)
    80006a9c:	ffffc097          	auipc	ra,0xffffc
    80006aa0:	9d4080e7          	jalr	-1580(ra) # 80002470 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006aa4:	0144a783          	lw	a5,20(s1)
    80006aa8:	0104a903          	lw	s2,16(s1)
    80006aac:	0327ce63          	blt	a5,s2,80006ae8 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006ab0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006ab4:	0304b503          	ld	a0,48(s1)
    80006ab8:	ffffc097          	auipc	ra,0xffffc
    80006abc:	9e4080e7          	jalr	-1564(ra) # 8000249c <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006ac0:	0284b503          	ld	a0,40(s1)
    80006ac4:	ffffc097          	auipc	ra,0xffffc
    80006ac8:	9d8080e7          	jalr	-1576(ra) # 8000249c <_Z10sem_signalP4_sem>

    return ret;
    80006acc:	00090513          	mv	a0,s2
    80006ad0:	01813083          	ld	ra,24(sp)
    80006ad4:	01013403          	ld	s0,16(sp)
    80006ad8:	00813483          	ld	s1,8(sp)
    80006adc:	00013903          	ld	s2,0(sp)
    80006ae0:	02010113          	addi	sp,sp,32
    80006ae4:	00008067          	ret
        ret = cap - head + tail;
    80006ae8:	0004a703          	lw	a4,0(s1)
    80006aec:	4127093b          	subw	s2,a4,s2
    80006af0:	00f9093b          	addw	s2,s2,a5
    80006af4:	fc1ff06f          	j	80006ab4 <_ZN6Buffer6getCntEv+0x44>

0000000080006af8 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006af8:	fe010113          	addi	sp,sp,-32
    80006afc:	00113c23          	sd	ra,24(sp)
    80006b00:	00813823          	sd	s0,16(sp)
    80006b04:	00913423          	sd	s1,8(sp)
    80006b08:	02010413          	addi	s0,sp,32
    80006b0c:	00050493          	mv	s1,a0
    putc('\n');
    80006b10:	00a00513          	li	a0,10
    80006b14:	ffffc097          	auipc	ra,0xffffc
    80006b18:	ab4080e7          	jalr	-1356(ra) # 800025c8 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006b1c:	00003517          	auipc	a0,0x3
    80006b20:	a2c50513          	addi	a0,a0,-1492 # 80009548 <CONSOLE_STATUS+0x538>
    80006b24:	fffff097          	auipc	ra,0xfffff
    80006b28:	d50080e7          	jalr	-688(ra) # 80005874 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006b2c:	00048513          	mv	a0,s1
    80006b30:	00000097          	auipc	ra,0x0
    80006b34:	f40080e7          	jalr	-192(ra) # 80006a70 <_ZN6Buffer6getCntEv>
    80006b38:	02a05c63          	blez	a0,80006b70 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006b3c:	0084b783          	ld	a5,8(s1)
    80006b40:	0104a703          	lw	a4,16(s1)
    80006b44:	00271713          	slli	a4,a4,0x2
    80006b48:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006b4c:	0007c503          	lbu	a0,0(a5)
    80006b50:	ffffc097          	auipc	ra,0xffffc
    80006b54:	a78080e7          	jalr	-1416(ra) # 800025c8 <_Z4putcc>
        head = (head + 1) % cap;
    80006b58:	0104a783          	lw	a5,16(s1)
    80006b5c:	0017879b          	addiw	a5,a5,1
    80006b60:	0004a703          	lw	a4,0(s1)
    80006b64:	02e7e7bb          	remw	a5,a5,a4
    80006b68:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006b6c:	fc1ff06f          	j	80006b2c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006b70:	02100513          	li	a0,33
    80006b74:	ffffc097          	auipc	ra,0xffffc
    80006b78:	a54080e7          	jalr	-1452(ra) # 800025c8 <_Z4putcc>
    putc('\n');
    80006b7c:	00a00513          	li	a0,10
    80006b80:	ffffc097          	auipc	ra,0xffffc
    80006b84:	a48080e7          	jalr	-1464(ra) # 800025c8 <_Z4putcc>
    mem_free(buffer);
    80006b88:	0084b503          	ld	a0,8(s1)
    80006b8c:	ffffb097          	auipc	ra,0xffffb
    80006b90:	78c080e7          	jalr	1932(ra) # 80002318 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006b94:	0204b503          	ld	a0,32(s1)
    80006b98:	ffffc097          	auipc	ra,0xffffc
    80006b9c:	8ac080e7          	jalr	-1876(ra) # 80002444 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006ba0:	0184b503          	ld	a0,24(s1)
    80006ba4:	ffffc097          	auipc	ra,0xffffc
    80006ba8:	8a0080e7          	jalr	-1888(ra) # 80002444 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006bac:	0304b503          	ld	a0,48(s1)
    80006bb0:	ffffc097          	auipc	ra,0xffffc
    80006bb4:	894080e7          	jalr	-1900(ra) # 80002444 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006bb8:	0284b503          	ld	a0,40(s1)
    80006bbc:	ffffc097          	auipc	ra,0xffffc
    80006bc0:	888080e7          	jalr	-1912(ra) # 80002444 <_Z9sem_closeP4_sem>
}
    80006bc4:	01813083          	ld	ra,24(sp)
    80006bc8:	01013403          	ld	s0,16(sp)
    80006bcc:	00813483          	ld	s1,8(sp)
    80006bd0:	02010113          	addi	sp,sp,32
    80006bd4:	00008067          	ret

0000000080006bd8 <start>:
    80006bd8:	ff010113          	addi	sp,sp,-16
    80006bdc:	00813423          	sd	s0,8(sp)
    80006be0:	01010413          	addi	s0,sp,16
    80006be4:	300027f3          	csrr	a5,mstatus
    80006be8:	ffffe737          	lui	a4,0xffffe
    80006bec:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffe962f>
    80006bf0:	00e7f7b3          	and	a5,a5,a4
    80006bf4:	00001737          	lui	a4,0x1
    80006bf8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006bfc:	00e7e7b3          	or	a5,a5,a4
    80006c00:	30079073          	csrw	mstatus,a5
    80006c04:	00000797          	auipc	a5,0x0
    80006c08:	16078793          	addi	a5,a5,352 # 80006d64 <system_main>
    80006c0c:	34179073          	csrw	mepc,a5
    80006c10:	00000793          	li	a5,0
    80006c14:	18079073          	csrw	satp,a5
    80006c18:	000107b7          	lui	a5,0x10
    80006c1c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006c20:	30279073          	csrw	medeleg,a5
    80006c24:	30379073          	csrw	mideleg,a5
    80006c28:	104027f3          	csrr	a5,sie
    80006c2c:	2227e793          	ori	a5,a5,546
    80006c30:	10479073          	csrw	sie,a5
    80006c34:	fff00793          	li	a5,-1
    80006c38:	00a7d793          	srli	a5,a5,0xa
    80006c3c:	3b079073          	csrw	pmpaddr0,a5
    80006c40:	00f00793          	li	a5,15
    80006c44:	3a079073          	csrw	pmpcfg0,a5
    80006c48:	f14027f3          	csrr	a5,mhartid
    80006c4c:	0200c737          	lui	a4,0x200c
    80006c50:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006c54:	0007869b          	sext.w	a3,a5
    80006c58:	00269713          	slli	a4,a3,0x2
    80006c5c:	000f4637          	lui	a2,0xf4
    80006c60:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006c64:	00d70733          	add	a4,a4,a3
    80006c68:	0037979b          	slliw	a5,a5,0x3
    80006c6c:	020046b7          	lui	a3,0x2004
    80006c70:	00d787b3          	add	a5,a5,a3
    80006c74:	00c585b3          	add	a1,a1,a2
    80006c78:	00371693          	slli	a3,a4,0x3
    80006c7c:	0000d717          	auipc	a4,0xd
    80006c80:	2f470713          	addi	a4,a4,756 # 80013f70 <timer_scratch>
    80006c84:	00b7b023          	sd	a1,0(a5)
    80006c88:	00d70733          	add	a4,a4,a3
    80006c8c:	00f73c23          	sd	a5,24(a4)
    80006c90:	02c73023          	sd	a2,32(a4)
    80006c94:	34071073          	csrw	mscratch,a4
    80006c98:	00000797          	auipc	a5,0x0
    80006c9c:	6e878793          	addi	a5,a5,1768 # 80007380 <timervec>
    80006ca0:	30579073          	csrw	mtvec,a5
    80006ca4:	300027f3          	csrr	a5,mstatus
    80006ca8:	0087e793          	ori	a5,a5,8
    80006cac:	30079073          	csrw	mstatus,a5
    80006cb0:	304027f3          	csrr	a5,mie
    80006cb4:	0807e793          	ori	a5,a5,128
    80006cb8:	30479073          	csrw	mie,a5
    80006cbc:	f14027f3          	csrr	a5,mhartid
    80006cc0:	0007879b          	sext.w	a5,a5
    80006cc4:	00078213          	mv	tp,a5
    80006cc8:	30200073          	mret
    80006ccc:	00813403          	ld	s0,8(sp)
    80006cd0:	01010113          	addi	sp,sp,16
    80006cd4:	00008067          	ret

0000000080006cd8 <timerinit>:
    80006cd8:	ff010113          	addi	sp,sp,-16
    80006cdc:	00813423          	sd	s0,8(sp)
    80006ce0:	01010413          	addi	s0,sp,16
    80006ce4:	f14027f3          	csrr	a5,mhartid
    80006ce8:	0200c737          	lui	a4,0x200c
    80006cec:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006cf0:	0007869b          	sext.w	a3,a5
    80006cf4:	00269713          	slli	a4,a3,0x2
    80006cf8:	000f4637          	lui	a2,0xf4
    80006cfc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006d00:	00d70733          	add	a4,a4,a3
    80006d04:	0037979b          	slliw	a5,a5,0x3
    80006d08:	020046b7          	lui	a3,0x2004
    80006d0c:	00d787b3          	add	a5,a5,a3
    80006d10:	00c585b3          	add	a1,a1,a2
    80006d14:	00371693          	slli	a3,a4,0x3
    80006d18:	0000d717          	auipc	a4,0xd
    80006d1c:	25870713          	addi	a4,a4,600 # 80013f70 <timer_scratch>
    80006d20:	00b7b023          	sd	a1,0(a5)
    80006d24:	00d70733          	add	a4,a4,a3
    80006d28:	00f73c23          	sd	a5,24(a4)
    80006d2c:	02c73023          	sd	a2,32(a4)
    80006d30:	34071073          	csrw	mscratch,a4
    80006d34:	00000797          	auipc	a5,0x0
    80006d38:	64c78793          	addi	a5,a5,1612 # 80007380 <timervec>
    80006d3c:	30579073          	csrw	mtvec,a5
    80006d40:	300027f3          	csrr	a5,mstatus
    80006d44:	0087e793          	ori	a5,a5,8
    80006d48:	30079073          	csrw	mstatus,a5
    80006d4c:	304027f3          	csrr	a5,mie
    80006d50:	0807e793          	ori	a5,a5,128
    80006d54:	30479073          	csrw	mie,a5
    80006d58:	00813403          	ld	s0,8(sp)
    80006d5c:	01010113          	addi	sp,sp,16
    80006d60:	00008067          	ret

0000000080006d64 <system_main>:
    80006d64:	fe010113          	addi	sp,sp,-32
    80006d68:	00813823          	sd	s0,16(sp)
    80006d6c:	00913423          	sd	s1,8(sp)
    80006d70:	00113c23          	sd	ra,24(sp)
    80006d74:	02010413          	addi	s0,sp,32
    80006d78:	00000097          	auipc	ra,0x0
    80006d7c:	0c4080e7          	jalr	196(ra) # 80006e3c <cpuid>
    80006d80:	00005497          	auipc	s1,0x5
    80006d84:	0f048493          	addi	s1,s1,240 # 8000be70 <started>
    80006d88:	02050263          	beqz	a0,80006dac <system_main+0x48>
    80006d8c:	0004a783          	lw	a5,0(s1)
    80006d90:	0007879b          	sext.w	a5,a5
    80006d94:	fe078ce3          	beqz	a5,80006d8c <system_main+0x28>
    80006d98:	0ff0000f          	fence
    80006d9c:	00003517          	auipc	a0,0x3
    80006da0:	93450513          	addi	a0,a0,-1740 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80006da4:	00001097          	auipc	ra,0x1
    80006da8:	a78080e7          	jalr	-1416(ra) # 8000781c <panic>
    80006dac:	00001097          	auipc	ra,0x1
    80006db0:	9cc080e7          	jalr	-1588(ra) # 80007778 <consoleinit>
    80006db4:	00001097          	auipc	ra,0x1
    80006db8:	158080e7          	jalr	344(ra) # 80007f0c <printfinit>
    80006dbc:	00002517          	auipc	a0,0x2
    80006dc0:	3c450513          	addi	a0,a0,964 # 80009180 <CONSOLE_STATUS+0x170>
    80006dc4:	00001097          	auipc	ra,0x1
    80006dc8:	ab4080e7          	jalr	-1356(ra) # 80007878 <__printf>
    80006dcc:	00003517          	auipc	a0,0x3
    80006dd0:	8d450513          	addi	a0,a0,-1836 # 800096a0 <CONSOLE_STATUS+0x690>
    80006dd4:	00001097          	auipc	ra,0x1
    80006dd8:	aa4080e7          	jalr	-1372(ra) # 80007878 <__printf>
    80006ddc:	00002517          	auipc	a0,0x2
    80006de0:	3a450513          	addi	a0,a0,932 # 80009180 <CONSOLE_STATUS+0x170>
    80006de4:	00001097          	auipc	ra,0x1
    80006de8:	a94080e7          	jalr	-1388(ra) # 80007878 <__printf>
    80006dec:	00001097          	auipc	ra,0x1
    80006df0:	4ac080e7          	jalr	1196(ra) # 80008298 <kinit>
    80006df4:	00000097          	auipc	ra,0x0
    80006df8:	148080e7          	jalr	328(ra) # 80006f3c <trapinit>
    80006dfc:	00000097          	auipc	ra,0x0
    80006e00:	16c080e7          	jalr	364(ra) # 80006f68 <trapinithart>
    80006e04:	00000097          	auipc	ra,0x0
    80006e08:	5bc080e7          	jalr	1468(ra) # 800073c0 <plicinit>
    80006e0c:	00000097          	auipc	ra,0x0
    80006e10:	5dc080e7          	jalr	1500(ra) # 800073e8 <plicinithart>
    80006e14:	00000097          	auipc	ra,0x0
    80006e18:	078080e7          	jalr	120(ra) # 80006e8c <userinit>
    80006e1c:	0ff0000f          	fence
    80006e20:	00100793          	li	a5,1
    80006e24:	00003517          	auipc	a0,0x3
    80006e28:	89450513          	addi	a0,a0,-1900 # 800096b8 <CONSOLE_STATUS+0x6a8>
    80006e2c:	00f4a023          	sw	a5,0(s1)
    80006e30:	00001097          	auipc	ra,0x1
    80006e34:	a48080e7          	jalr	-1464(ra) # 80007878 <__printf>
    80006e38:	0000006f          	j	80006e38 <system_main+0xd4>

0000000080006e3c <cpuid>:
    80006e3c:	ff010113          	addi	sp,sp,-16
    80006e40:	00813423          	sd	s0,8(sp)
    80006e44:	01010413          	addi	s0,sp,16
    80006e48:	00020513          	mv	a0,tp
    80006e4c:	00813403          	ld	s0,8(sp)
    80006e50:	0005051b          	sext.w	a0,a0
    80006e54:	01010113          	addi	sp,sp,16
    80006e58:	00008067          	ret

0000000080006e5c <mycpu>:
    80006e5c:	ff010113          	addi	sp,sp,-16
    80006e60:	00813423          	sd	s0,8(sp)
    80006e64:	01010413          	addi	s0,sp,16
    80006e68:	00020793          	mv	a5,tp
    80006e6c:	00813403          	ld	s0,8(sp)
    80006e70:	0007879b          	sext.w	a5,a5
    80006e74:	00779793          	slli	a5,a5,0x7
    80006e78:	0000e517          	auipc	a0,0xe
    80006e7c:	12850513          	addi	a0,a0,296 # 80014fa0 <cpus>
    80006e80:	00f50533          	add	a0,a0,a5
    80006e84:	01010113          	addi	sp,sp,16
    80006e88:	00008067          	ret

0000000080006e8c <userinit>:
    80006e8c:	ff010113          	addi	sp,sp,-16
    80006e90:	00813423          	sd	s0,8(sp)
    80006e94:	01010413          	addi	s0,sp,16
    80006e98:	00813403          	ld	s0,8(sp)
    80006e9c:	01010113          	addi	sp,sp,16
    80006ea0:	ffffd317          	auipc	t1,0xffffd
    80006ea4:	ca030067          	jr	-864(t1) # 80003b40 <main>

0000000080006ea8 <either_copyout>:
    80006ea8:	ff010113          	addi	sp,sp,-16
    80006eac:	00813023          	sd	s0,0(sp)
    80006eb0:	00113423          	sd	ra,8(sp)
    80006eb4:	01010413          	addi	s0,sp,16
    80006eb8:	02051663          	bnez	a0,80006ee4 <either_copyout+0x3c>
    80006ebc:	00058513          	mv	a0,a1
    80006ec0:	00060593          	mv	a1,a2
    80006ec4:	0006861b          	sext.w	a2,a3
    80006ec8:	00002097          	auipc	ra,0x2
    80006ecc:	c5c080e7          	jalr	-932(ra) # 80008b24 <__memmove>
    80006ed0:	00813083          	ld	ra,8(sp)
    80006ed4:	00013403          	ld	s0,0(sp)
    80006ed8:	00000513          	li	a0,0
    80006edc:	01010113          	addi	sp,sp,16
    80006ee0:	00008067          	ret
    80006ee4:	00003517          	auipc	a0,0x3
    80006ee8:	81450513          	addi	a0,a0,-2028 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80006eec:	00001097          	auipc	ra,0x1
    80006ef0:	930080e7          	jalr	-1744(ra) # 8000781c <panic>

0000000080006ef4 <either_copyin>:
    80006ef4:	ff010113          	addi	sp,sp,-16
    80006ef8:	00813023          	sd	s0,0(sp)
    80006efc:	00113423          	sd	ra,8(sp)
    80006f00:	01010413          	addi	s0,sp,16
    80006f04:	02059463          	bnez	a1,80006f2c <either_copyin+0x38>
    80006f08:	00060593          	mv	a1,a2
    80006f0c:	0006861b          	sext.w	a2,a3
    80006f10:	00002097          	auipc	ra,0x2
    80006f14:	c14080e7          	jalr	-1004(ra) # 80008b24 <__memmove>
    80006f18:	00813083          	ld	ra,8(sp)
    80006f1c:	00013403          	ld	s0,0(sp)
    80006f20:	00000513          	li	a0,0
    80006f24:	01010113          	addi	sp,sp,16
    80006f28:	00008067          	ret
    80006f2c:	00002517          	auipc	a0,0x2
    80006f30:	7f450513          	addi	a0,a0,2036 # 80009720 <CONSOLE_STATUS+0x710>
    80006f34:	00001097          	auipc	ra,0x1
    80006f38:	8e8080e7          	jalr	-1816(ra) # 8000781c <panic>

0000000080006f3c <trapinit>:
    80006f3c:	ff010113          	addi	sp,sp,-16
    80006f40:	00813423          	sd	s0,8(sp)
    80006f44:	01010413          	addi	s0,sp,16
    80006f48:	00813403          	ld	s0,8(sp)
    80006f4c:	00002597          	auipc	a1,0x2
    80006f50:	7fc58593          	addi	a1,a1,2044 # 80009748 <CONSOLE_STATUS+0x738>
    80006f54:	0000e517          	auipc	a0,0xe
    80006f58:	0cc50513          	addi	a0,a0,204 # 80015020 <tickslock>
    80006f5c:	01010113          	addi	sp,sp,16
    80006f60:	00001317          	auipc	t1,0x1
    80006f64:	5c830067          	jr	1480(t1) # 80008528 <initlock>

0000000080006f68 <trapinithart>:
    80006f68:	ff010113          	addi	sp,sp,-16
    80006f6c:	00813423          	sd	s0,8(sp)
    80006f70:	01010413          	addi	s0,sp,16
    80006f74:	00000797          	auipc	a5,0x0
    80006f78:	2fc78793          	addi	a5,a5,764 # 80007270 <kernelvec>
    80006f7c:	10579073          	csrw	stvec,a5
    80006f80:	00813403          	ld	s0,8(sp)
    80006f84:	01010113          	addi	sp,sp,16
    80006f88:	00008067          	ret

0000000080006f8c <usertrap>:
    80006f8c:	ff010113          	addi	sp,sp,-16
    80006f90:	00813423          	sd	s0,8(sp)
    80006f94:	01010413          	addi	s0,sp,16
    80006f98:	00813403          	ld	s0,8(sp)
    80006f9c:	01010113          	addi	sp,sp,16
    80006fa0:	00008067          	ret

0000000080006fa4 <usertrapret>:
    80006fa4:	ff010113          	addi	sp,sp,-16
    80006fa8:	00813423          	sd	s0,8(sp)
    80006fac:	01010413          	addi	s0,sp,16
    80006fb0:	00813403          	ld	s0,8(sp)
    80006fb4:	01010113          	addi	sp,sp,16
    80006fb8:	00008067          	ret

0000000080006fbc <kerneltrap>:
    80006fbc:	fe010113          	addi	sp,sp,-32
    80006fc0:	00813823          	sd	s0,16(sp)
    80006fc4:	00113c23          	sd	ra,24(sp)
    80006fc8:	00913423          	sd	s1,8(sp)
    80006fcc:	02010413          	addi	s0,sp,32
    80006fd0:	142025f3          	csrr	a1,scause
    80006fd4:	100027f3          	csrr	a5,sstatus
    80006fd8:	0027f793          	andi	a5,a5,2
    80006fdc:	10079c63          	bnez	a5,800070f4 <kerneltrap+0x138>
    80006fe0:	142027f3          	csrr	a5,scause
    80006fe4:	0207ce63          	bltz	a5,80007020 <kerneltrap+0x64>
    80006fe8:	00002517          	auipc	a0,0x2
    80006fec:	7a850513          	addi	a0,a0,1960 # 80009790 <CONSOLE_STATUS+0x780>
    80006ff0:	00001097          	auipc	ra,0x1
    80006ff4:	888080e7          	jalr	-1912(ra) # 80007878 <__printf>
    80006ff8:	141025f3          	csrr	a1,sepc
    80006ffc:	14302673          	csrr	a2,stval
    80007000:	00002517          	auipc	a0,0x2
    80007004:	7a050513          	addi	a0,a0,1952 # 800097a0 <CONSOLE_STATUS+0x790>
    80007008:	00001097          	auipc	ra,0x1
    8000700c:	870080e7          	jalr	-1936(ra) # 80007878 <__printf>
    80007010:	00002517          	auipc	a0,0x2
    80007014:	7a850513          	addi	a0,a0,1960 # 800097b8 <CONSOLE_STATUS+0x7a8>
    80007018:	00001097          	auipc	ra,0x1
    8000701c:	804080e7          	jalr	-2044(ra) # 8000781c <panic>
    80007020:	0ff7f713          	andi	a4,a5,255
    80007024:	00900693          	li	a3,9
    80007028:	04d70063          	beq	a4,a3,80007068 <kerneltrap+0xac>
    8000702c:	fff00713          	li	a4,-1
    80007030:	03f71713          	slli	a4,a4,0x3f
    80007034:	00170713          	addi	a4,a4,1
    80007038:	fae798e3          	bne	a5,a4,80006fe8 <kerneltrap+0x2c>
    8000703c:	00000097          	auipc	ra,0x0
    80007040:	e00080e7          	jalr	-512(ra) # 80006e3c <cpuid>
    80007044:	06050663          	beqz	a0,800070b0 <kerneltrap+0xf4>
    80007048:	144027f3          	csrr	a5,sip
    8000704c:	ffd7f793          	andi	a5,a5,-3
    80007050:	14479073          	csrw	sip,a5
    80007054:	01813083          	ld	ra,24(sp)
    80007058:	01013403          	ld	s0,16(sp)
    8000705c:	00813483          	ld	s1,8(sp)
    80007060:	02010113          	addi	sp,sp,32
    80007064:	00008067          	ret
    80007068:	00000097          	auipc	ra,0x0
    8000706c:	3cc080e7          	jalr	972(ra) # 80007434 <plic_claim>
    80007070:	00a00793          	li	a5,10
    80007074:	00050493          	mv	s1,a0
    80007078:	06f50863          	beq	a0,a5,800070e8 <kerneltrap+0x12c>
    8000707c:	fc050ce3          	beqz	a0,80007054 <kerneltrap+0x98>
    80007080:	00050593          	mv	a1,a0
    80007084:	00002517          	auipc	a0,0x2
    80007088:	6ec50513          	addi	a0,a0,1772 # 80009770 <CONSOLE_STATUS+0x760>
    8000708c:	00000097          	auipc	ra,0x0
    80007090:	7ec080e7          	jalr	2028(ra) # 80007878 <__printf>
    80007094:	01013403          	ld	s0,16(sp)
    80007098:	01813083          	ld	ra,24(sp)
    8000709c:	00048513          	mv	a0,s1
    800070a0:	00813483          	ld	s1,8(sp)
    800070a4:	02010113          	addi	sp,sp,32
    800070a8:	00000317          	auipc	t1,0x0
    800070ac:	3c430067          	jr	964(t1) # 8000746c <plic_complete>
    800070b0:	0000e517          	auipc	a0,0xe
    800070b4:	f7050513          	addi	a0,a0,-144 # 80015020 <tickslock>
    800070b8:	00001097          	auipc	ra,0x1
    800070bc:	494080e7          	jalr	1172(ra) # 8000854c <acquire>
    800070c0:	00005717          	auipc	a4,0x5
    800070c4:	db470713          	addi	a4,a4,-588 # 8000be74 <ticks>
    800070c8:	00072783          	lw	a5,0(a4)
    800070cc:	0000e517          	auipc	a0,0xe
    800070d0:	f5450513          	addi	a0,a0,-172 # 80015020 <tickslock>
    800070d4:	0017879b          	addiw	a5,a5,1
    800070d8:	00f72023          	sw	a5,0(a4)
    800070dc:	00001097          	auipc	ra,0x1
    800070e0:	53c080e7          	jalr	1340(ra) # 80008618 <release>
    800070e4:	f65ff06f          	j	80007048 <kerneltrap+0x8c>
    800070e8:	00001097          	auipc	ra,0x1
    800070ec:	098080e7          	jalr	152(ra) # 80008180 <uartintr>
    800070f0:	fa5ff06f          	j	80007094 <kerneltrap+0xd8>
    800070f4:	00002517          	auipc	a0,0x2
    800070f8:	65c50513          	addi	a0,a0,1628 # 80009750 <CONSOLE_STATUS+0x740>
    800070fc:	00000097          	auipc	ra,0x0
    80007100:	720080e7          	jalr	1824(ra) # 8000781c <panic>

0000000080007104 <clockintr>:
    80007104:	fe010113          	addi	sp,sp,-32
    80007108:	00813823          	sd	s0,16(sp)
    8000710c:	00913423          	sd	s1,8(sp)
    80007110:	00113c23          	sd	ra,24(sp)
    80007114:	02010413          	addi	s0,sp,32
    80007118:	0000e497          	auipc	s1,0xe
    8000711c:	f0848493          	addi	s1,s1,-248 # 80015020 <tickslock>
    80007120:	00048513          	mv	a0,s1
    80007124:	00001097          	auipc	ra,0x1
    80007128:	428080e7          	jalr	1064(ra) # 8000854c <acquire>
    8000712c:	00005717          	auipc	a4,0x5
    80007130:	d4870713          	addi	a4,a4,-696 # 8000be74 <ticks>
    80007134:	00072783          	lw	a5,0(a4)
    80007138:	01013403          	ld	s0,16(sp)
    8000713c:	01813083          	ld	ra,24(sp)
    80007140:	00048513          	mv	a0,s1
    80007144:	0017879b          	addiw	a5,a5,1
    80007148:	00813483          	ld	s1,8(sp)
    8000714c:	00f72023          	sw	a5,0(a4)
    80007150:	02010113          	addi	sp,sp,32
    80007154:	00001317          	auipc	t1,0x1
    80007158:	4c430067          	jr	1220(t1) # 80008618 <release>

000000008000715c <devintr>:
    8000715c:	142027f3          	csrr	a5,scause
    80007160:	00000513          	li	a0,0
    80007164:	0007c463          	bltz	a5,8000716c <devintr+0x10>
    80007168:	00008067          	ret
    8000716c:	fe010113          	addi	sp,sp,-32
    80007170:	00813823          	sd	s0,16(sp)
    80007174:	00113c23          	sd	ra,24(sp)
    80007178:	00913423          	sd	s1,8(sp)
    8000717c:	02010413          	addi	s0,sp,32
    80007180:	0ff7f713          	andi	a4,a5,255
    80007184:	00900693          	li	a3,9
    80007188:	04d70c63          	beq	a4,a3,800071e0 <devintr+0x84>
    8000718c:	fff00713          	li	a4,-1
    80007190:	03f71713          	slli	a4,a4,0x3f
    80007194:	00170713          	addi	a4,a4,1
    80007198:	00e78c63          	beq	a5,a4,800071b0 <devintr+0x54>
    8000719c:	01813083          	ld	ra,24(sp)
    800071a0:	01013403          	ld	s0,16(sp)
    800071a4:	00813483          	ld	s1,8(sp)
    800071a8:	02010113          	addi	sp,sp,32
    800071ac:	00008067          	ret
    800071b0:	00000097          	auipc	ra,0x0
    800071b4:	c8c080e7          	jalr	-884(ra) # 80006e3c <cpuid>
    800071b8:	06050663          	beqz	a0,80007224 <devintr+0xc8>
    800071bc:	144027f3          	csrr	a5,sip
    800071c0:	ffd7f793          	andi	a5,a5,-3
    800071c4:	14479073          	csrw	sip,a5
    800071c8:	01813083          	ld	ra,24(sp)
    800071cc:	01013403          	ld	s0,16(sp)
    800071d0:	00813483          	ld	s1,8(sp)
    800071d4:	00200513          	li	a0,2
    800071d8:	02010113          	addi	sp,sp,32
    800071dc:	00008067          	ret
    800071e0:	00000097          	auipc	ra,0x0
    800071e4:	254080e7          	jalr	596(ra) # 80007434 <plic_claim>
    800071e8:	00a00793          	li	a5,10
    800071ec:	00050493          	mv	s1,a0
    800071f0:	06f50663          	beq	a0,a5,8000725c <devintr+0x100>
    800071f4:	00100513          	li	a0,1
    800071f8:	fa0482e3          	beqz	s1,8000719c <devintr+0x40>
    800071fc:	00048593          	mv	a1,s1
    80007200:	00002517          	auipc	a0,0x2
    80007204:	57050513          	addi	a0,a0,1392 # 80009770 <CONSOLE_STATUS+0x760>
    80007208:	00000097          	auipc	ra,0x0
    8000720c:	670080e7          	jalr	1648(ra) # 80007878 <__printf>
    80007210:	00048513          	mv	a0,s1
    80007214:	00000097          	auipc	ra,0x0
    80007218:	258080e7          	jalr	600(ra) # 8000746c <plic_complete>
    8000721c:	00100513          	li	a0,1
    80007220:	f7dff06f          	j	8000719c <devintr+0x40>
    80007224:	0000e517          	auipc	a0,0xe
    80007228:	dfc50513          	addi	a0,a0,-516 # 80015020 <tickslock>
    8000722c:	00001097          	auipc	ra,0x1
    80007230:	320080e7          	jalr	800(ra) # 8000854c <acquire>
    80007234:	00005717          	auipc	a4,0x5
    80007238:	c4070713          	addi	a4,a4,-960 # 8000be74 <ticks>
    8000723c:	00072783          	lw	a5,0(a4)
    80007240:	0000e517          	auipc	a0,0xe
    80007244:	de050513          	addi	a0,a0,-544 # 80015020 <tickslock>
    80007248:	0017879b          	addiw	a5,a5,1
    8000724c:	00f72023          	sw	a5,0(a4)
    80007250:	00001097          	auipc	ra,0x1
    80007254:	3c8080e7          	jalr	968(ra) # 80008618 <release>
    80007258:	f65ff06f          	j	800071bc <devintr+0x60>
    8000725c:	00001097          	auipc	ra,0x1
    80007260:	f24080e7          	jalr	-220(ra) # 80008180 <uartintr>
    80007264:	fadff06f          	j	80007210 <devintr+0xb4>
	...

0000000080007270 <kernelvec>:
    80007270:	f0010113          	addi	sp,sp,-256
    80007274:	00113023          	sd	ra,0(sp)
    80007278:	00213423          	sd	sp,8(sp)
    8000727c:	00313823          	sd	gp,16(sp)
    80007280:	00413c23          	sd	tp,24(sp)
    80007284:	02513023          	sd	t0,32(sp)
    80007288:	02613423          	sd	t1,40(sp)
    8000728c:	02713823          	sd	t2,48(sp)
    80007290:	02813c23          	sd	s0,56(sp)
    80007294:	04913023          	sd	s1,64(sp)
    80007298:	04a13423          	sd	a0,72(sp)
    8000729c:	04b13823          	sd	a1,80(sp)
    800072a0:	04c13c23          	sd	a2,88(sp)
    800072a4:	06d13023          	sd	a3,96(sp)
    800072a8:	06e13423          	sd	a4,104(sp)
    800072ac:	06f13823          	sd	a5,112(sp)
    800072b0:	07013c23          	sd	a6,120(sp)
    800072b4:	09113023          	sd	a7,128(sp)
    800072b8:	09213423          	sd	s2,136(sp)
    800072bc:	09313823          	sd	s3,144(sp)
    800072c0:	09413c23          	sd	s4,152(sp)
    800072c4:	0b513023          	sd	s5,160(sp)
    800072c8:	0b613423          	sd	s6,168(sp)
    800072cc:	0b713823          	sd	s7,176(sp)
    800072d0:	0b813c23          	sd	s8,184(sp)
    800072d4:	0d913023          	sd	s9,192(sp)
    800072d8:	0da13423          	sd	s10,200(sp)
    800072dc:	0db13823          	sd	s11,208(sp)
    800072e0:	0dc13c23          	sd	t3,216(sp)
    800072e4:	0fd13023          	sd	t4,224(sp)
    800072e8:	0fe13423          	sd	t5,232(sp)
    800072ec:	0ff13823          	sd	t6,240(sp)
    800072f0:	ccdff0ef          	jal	ra,80006fbc <kerneltrap>
    800072f4:	00013083          	ld	ra,0(sp)
    800072f8:	00813103          	ld	sp,8(sp)
    800072fc:	01013183          	ld	gp,16(sp)
    80007300:	02013283          	ld	t0,32(sp)
    80007304:	02813303          	ld	t1,40(sp)
    80007308:	03013383          	ld	t2,48(sp)
    8000730c:	03813403          	ld	s0,56(sp)
    80007310:	04013483          	ld	s1,64(sp)
    80007314:	04813503          	ld	a0,72(sp)
    80007318:	05013583          	ld	a1,80(sp)
    8000731c:	05813603          	ld	a2,88(sp)
    80007320:	06013683          	ld	a3,96(sp)
    80007324:	06813703          	ld	a4,104(sp)
    80007328:	07013783          	ld	a5,112(sp)
    8000732c:	07813803          	ld	a6,120(sp)
    80007330:	08013883          	ld	a7,128(sp)
    80007334:	08813903          	ld	s2,136(sp)
    80007338:	09013983          	ld	s3,144(sp)
    8000733c:	09813a03          	ld	s4,152(sp)
    80007340:	0a013a83          	ld	s5,160(sp)
    80007344:	0a813b03          	ld	s6,168(sp)
    80007348:	0b013b83          	ld	s7,176(sp)
    8000734c:	0b813c03          	ld	s8,184(sp)
    80007350:	0c013c83          	ld	s9,192(sp)
    80007354:	0c813d03          	ld	s10,200(sp)
    80007358:	0d013d83          	ld	s11,208(sp)
    8000735c:	0d813e03          	ld	t3,216(sp)
    80007360:	0e013e83          	ld	t4,224(sp)
    80007364:	0e813f03          	ld	t5,232(sp)
    80007368:	0f013f83          	ld	t6,240(sp)
    8000736c:	10010113          	addi	sp,sp,256
    80007370:	10200073          	sret
    80007374:	00000013          	nop
    80007378:	00000013          	nop
    8000737c:	00000013          	nop

0000000080007380 <timervec>:
    80007380:	34051573          	csrrw	a0,mscratch,a0
    80007384:	00b53023          	sd	a1,0(a0)
    80007388:	00c53423          	sd	a2,8(a0)
    8000738c:	00d53823          	sd	a3,16(a0)
    80007390:	01853583          	ld	a1,24(a0)
    80007394:	02053603          	ld	a2,32(a0)
    80007398:	0005b683          	ld	a3,0(a1)
    8000739c:	00c686b3          	add	a3,a3,a2
    800073a0:	00d5b023          	sd	a3,0(a1)
    800073a4:	00200593          	li	a1,2
    800073a8:	14459073          	csrw	sip,a1
    800073ac:	01053683          	ld	a3,16(a0)
    800073b0:	00853603          	ld	a2,8(a0)
    800073b4:	00053583          	ld	a1,0(a0)
    800073b8:	34051573          	csrrw	a0,mscratch,a0
    800073bc:	30200073          	mret

00000000800073c0 <plicinit>:
    800073c0:	ff010113          	addi	sp,sp,-16
    800073c4:	00813423          	sd	s0,8(sp)
    800073c8:	01010413          	addi	s0,sp,16
    800073cc:	00813403          	ld	s0,8(sp)
    800073d0:	0c0007b7          	lui	a5,0xc000
    800073d4:	00100713          	li	a4,1
    800073d8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800073dc:	00e7a223          	sw	a4,4(a5)
    800073e0:	01010113          	addi	sp,sp,16
    800073e4:	00008067          	ret

00000000800073e8 <plicinithart>:
    800073e8:	ff010113          	addi	sp,sp,-16
    800073ec:	00813023          	sd	s0,0(sp)
    800073f0:	00113423          	sd	ra,8(sp)
    800073f4:	01010413          	addi	s0,sp,16
    800073f8:	00000097          	auipc	ra,0x0
    800073fc:	a44080e7          	jalr	-1468(ra) # 80006e3c <cpuid>
    80007400:	0085171b          	slliw	a4,a0,0x8
    80007404:	0c0027b7          	lui	a5,0xc002
    80007408:	00e787b3          	add	a5,a5,a4
    8000740c:	40200713          	li	a4,1026
    80007410:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007414:	00813083          	ld	ra,8(sp)
    80007418:	00013403          	ld	s0,0(sp)
    8000741c:	00d5151b          	slliw	a0,a0,0xd
    80007420:	0c2017b7          	lui	a5,0xc201
    80007424:	00a78533          	add	a0,a5,a0
    80007428:	00052023          	sw	zero,0(a0)
    8000742c:	01010113          	addi	sp,sp,16
    80007430:	00008067          	ret

0000000080007434 <plic_claim>:
    80007434:	ff010113          	addi	sp,sp,-16
    80007438:	00813023          	sd	s0,0(sp)
    8000743c:	00113423          	sd	ra,8(sp)
    80007440:	01010413          	addi	s0,sp,16
    80007444:	00000097          	auipc	ra,0x0
    80007448:	9f8080e7          	jalr	-1544(ra) # 80006e3c <cpuid>
    8000744c:	00813083          	ld	ra,8(sp)
    80007450:	00013403          	ld	s0,0(sp)
    80007454:	00d5151b          	slliw	a0,a0,0xd
    80007458:	0c2017b7          	lui	a5,0xc201
    8000745c:	00a78533          	add	a0,a5,a0
    80007460:	00452503          	lw	a0,4(a0)
    80007464:	01010113          	addi	sp,sp,16
    80007468:	00008067          	ret

000000008000746c <plic_complete>:
    8000746c:	fe010113          	addi	sp,sp,-32
    80007470:	00813823          	sd	s0,16(sp)
    80007474:	00913423          	sd	s1,8(sp)
    80007478:	00113c23          	sd	ra,24(sp)
    8000747c:	02010413          	addi	s0,sp,32
    80007480:	00050493          	mv	s1,a0
    80007484:	00000097          	auipc	ra,0x0
    80007488:	9b8080e7          	jalr	-1608(ra) # 80006e3c <cpuid>
    8000748c:	01813083          	ld	ra,24(sp)
    80007490:	01013403          	ld	s0,16(sp)
    80007494:	00d5179b          	slliw	a5,a0,0xd
    80007498:	0c201737          	lui	a4,0xc201
    8000749c:	00f707b3          	add	a5,a4,a5
    800074a0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800074a4:	00813483          	ld	s1,8(sp)
    800074a8:	02010113          	addi	sp,sp,32
    800074ac:	00008067          	ret

00000000800074b0 <consolewrite>:
    800074b0:	fb010113          	addi	sp,sp,-80
    800074b4:	04813023          	sd	s0,64(sp)
    800074b8:	04113423          	sd	ra,72(sp)
    800074bc:	02913c23          	sd	s1,56(sp)
    800074c0:	03213823          	sd	s2,48(sp)
    800074c4:	03313423          	sd	s3,40(sp)
    800074c8:	03413023          	sd	s4,32(sp)
    800074cc:	01513c23          	sd	s5,24(sp)
    800074d0:	05010413          	addi	s0,sp,80
    800074d4:	06c05c63          	blez	a2,8000754c <consolewrite+0x9c>
    800074d8:	00060993          	mv	s3,a2
    800074dc:	00050a13          	mv	s4,a0
    800074e0:	00058493          	mv	s1,a1
    800074e4:	00000913          	li	s2,0
    800074e8:	fff00a93          	li	s5,-1
    800074ec:	01c0006f          	j	80007508 <consolewrite+0x58>
    800074f0:	fbf44503          	lbu	a0,-65(s0)
    800074f4:	0019091b          	addiw	s2,s2,1
    800074f8:	00148493          	addi	s1,s1,1
    800074fc:	00001097          	auipc	ra,0x1
    80007500:	a9c080e7          	jalr	-1380(ra) # 80007f98 <uartputc>
    80007504:	03298063          	beq	s3,s2,80007524 <consolewrite+0x74>
    80007508:	00048613          	mv	a2,s1
    8000750c:	00100693          	li	a3,1
    80007510:	000a0593          	mv	a1,s4
    80007514:	fbf40513          	addi	a0,s0,-65
    80007518:	00000097          	auipc	ra,0x0
    8000751c:	9dc080e7          	jalr	-1572(ra) # 80006ef4 <either_copyin>
    80007520:	fd5518e3          	bne	a0,s5,800074f0 <consolewrite+0x40>
    80007524:	04813083          	ld	ra,72(sp)
    80007528:	04013403          	ld	s0,64(sp)
    8000752c:	03813483          	ld	s1,56(sp)
    80007530:	02813983          	ld	s3,40(sp)
    80007534:	02013a03          	ld	s4,32(sp)
    80007538:	01813a83          	ld	s5,24(sp)
    8000753c:	00090513          	mv	a0,s2
    80007540:	03013903          	ld	s2,48(sp)
    80007544:	05010113          	addi	sp,sp,80
    80007548:	00008067          	ret
    8000754c:	00000913          	li	s2,0
    80007550:	fd5ff06f          	j	80007524 <consolewrite+0x74>

0000000080007554 <consoleread>:
    80007554:	f9010113          	addi	sp,sp,-112
    80007558:	06813023          	sd	s0,96(sp)
    8000755c:	04913c23          	sd	s1,88(sp)
    80007560:	05213823          	sd	s2,80(sp)
    80007564:	05313423          	sd	s3,72(sp)
    80007568:	05413023          	sd	s4,64(sp)
    8000756c:	03513c23          	sd	s5,56(sp)
    80007570:	03613823          	sd	s6,48(sp)
    80007574:	03713423          	sd	s7,40(sp)
    80007578:	03813023          	sd	s8,32(sp)
    8000757c:	06113423          	sd	ra,104(sp)
    80007580:	01913c23          	sd	s9,24(sp)
    80007584:	07010413          	addi	s0,sp,112
    80007588:	00060b93          	mv	s7,a2
    8000758c:	00050913          	mv	s2,a0
    80007590:	00058c13          	mv	s8,a1
    80007594:	00060b1b          	sext.w	s6,a2
    80007598:	0000e497          	auipc	s1,0xe
    8000759c:	ab048493          	addi	s1,s1,-1360 # 80015048 <cons>
    800075a0:	00400993          	li	s3,4
    800075a4:	fff00a13          	li	s4,-1
    800075a8:	00a00a93          	li	s5,10
    800075ac:	05705e63          	blez	s7,80007608 <consoleread+0xb4>
    800075b0:	09c4a703          	lw	a4,156(s1)
    800075b4:	0984a783          	lw	a5,152(s1)
    800075b8:	0007071b          	sext.w	a4,a4
    800075bc:	08e78463          	beq	a5,a4,80007644 <consoleread+0xf0>
    800075c0:	07f7f713          	andi	a4,a5,127
    800075c4:	00e48733          	add	a4,s1,a4
    800075c8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800075cc:	0017869b          	addiw	a3,a5,1
    800075d0:	08d4ac23          	sw	a3,152(s1)
    800075d4:	00070c9b          	sext.w	s9,a4
    800075d8:	0b370663          	beq	a4,s3,80007684 <consoleread+0x130>
    800075dc:	00100693          	li	a3,1
    800075e0:	f9f40613          	addi	a2,s0,-97
    800075e4:	000c0593          	mv	a1,s8
    800075e8:	00090513          	mv	a0,s2
    800075ec:	f8e40fa3          	sb	a4,-97(s0)
    800075f0:	00000097          	auipc	ra,0x0
    800075f4:	8b8080e7          	jalr	-1864(ra) # 80006ea8 <either_copyout>
    800075f8:	01450863          	beq	a0,s4,80007608 <consoleread+0xb4>
    800075fc:	001c0c13          	addi	s8,s8,1
    80007600:	fffb8b9b          	addiw	s7,s7,-1
    80007604:	fb5c94e3          	bne	s9,s5,800075ac <consoleread+0x58>
    80007608:	000b851b          	sext.w	a0,s7
    8000760c:	06813083          	ld	ra,104(sp)
    80007610:	06013403          	ld	s0,96(sp)
    80007614:	05813483          	ld	s1,88(sp)
    80007618:	05013903          	ld	s2,80(sp)
    8000761c:	04813983          	ld	s3,72(sp)
    80007620:	04013a03          	ld	s4,64(sp)
    80007624:	03813a83          	ld	s5,56(sp)
    80007628:	02813b83          	ld	s7,40(sp)
    8000762c:	02013c03          	ld	s8,32(sp)
    80007630:	01813c83          	ld	s9,24(sp)
    80007634:	40ab053b          	subw	a0,s6,a0
    80007638:	03013b03          	ld	s6,48(sp)
    8000763c:	07010113          	addi	sp,sp,112
    80007640:	00008067          	ret
    80007644:	00001097          	auipc	ra,0x1
    80007648:	1d8080e7          	jalr	472(ra) # 8000881c <push_on>
    8000764c:	0984a703          	lw	a4,152(s1)
    80007650:	09c4a783          	lw	a5,156(s1)
    80007654:	0007879b          	sext.w	a5,a5
    80007658:	fef70ce3          	beq	a4,a5,80007650 <consoleread+0xfc>
    8000765c:	00001097          	auipc	ra,0x1
    80007660:	234080e7          	jalr	564(ra) # 80008890 <pop_on>
    80007664:	0984a783          	lw	a5,152(s1)
    80007668:	07f7f713          	andi	a4,a5,127
    8000766c:	00e48733          	add	a4,s1,a4
    80007670:	01874703          	lbu	a4,24(a4)
    80007674:	0017869b          	addiw	a3,a5,1
    80007678:	08d4ac23          	sw	a3,152(s1)
    8000767c:	00070c9b          	sext.w	s9,a4
    80007680:	f5371ee3          	bne	a4,s3,800075dc <consoleread+0x88>
    80007684:	000b851b          	sext.w	a0,s7
    80007688:	f96bf2e3          	bgeu	s7,s6,8000760c <consoleread+0xb8>
    8000768c:	08f4ac23          	sw	a5,152(s1)
    80007690:	f7dff06f          	j	8000760c <consoleread+0xb8>

0000000080007694 <consputc>:
    80007694:	10000793          	li	a5,256
    80007698:	00f50663          	beq	a0,a5,800076a4 <consputc+0x10>
    8000769c:	00001317          	auipc	t1,0x1
    800076a0:	9f430067          	jr	-1548(t1) # 80008090 <uartputc_sync>
    800076a4:	ff010113          	addi	sp,sp,-16
    800076a8:	00113423          	sd	ra,8(sp)
    800076ac:	00813023          	sd	s0,0(sp)
    800076b0:	01010413          	addi	s0,sp,16
    800076b4:	00800513          	li	a0,8
    800076b8:	00001097          	auipc	ra,0x1
    800076bc:	9d8080e7          	jalr	-1576(ra) # 80008090 <uartputc_sync>
    800076c0:	02000513          	li	a0,32
    800076c4:	00001097          	auipc	ra,0x1
    800076c8:	9cc080e7          	jalr	-1588(ra) # 80008090 <uartputc_sync>
    800076cc:	00013403          	ld	s0,0(sp)
    800076d0:	00813083          	ld	ra,8(sp)
    800076d4:	00800513          	li	a0,8
    800076d8:	01010113          	addi	sp,sp,16
    800076dc:	00001317          	auipc	t1,0x1
    800076e0:	9b430067          	jr	-1612(t1) # 80008090 <uartputc_sync>

00000000800076e4 <consoleintr>:
    800076e4:	fe010113          	addi	sp,sp,-32
    800076e8:	00813823          	sd	s0,16(sp)
    800076ec:	00913423          	sd	s1,8(sp)
    800076f0:	01213023          	sd	s2,0(sp)
    800076f4:	00113c23          	sd	ra,24(sp)
    800076f8:	02010413          	addi	s0,sp,32
    800076fc:	0000e917          	auipc	s2,0xe
    80007700:	94c90913          	addi	s2,s2,-1716 # 80015048 <cons>
    80007704:	00050493          	mv	s1,a0
    80007708:	00090513          	mv	a0,s2
    8000770c:	00001097          	auipc	ra,0x1
    80007710:	e40080e7          	jalr	-448(ra) # 8000854c <acquire>
    80007714:	02048c63          	beqz	s1,8000774c <consoleintr+0x68>
    80007718:	0a092783          	lw	a5,160(s2)
    8000771c:	09892703          	lw	a4,152(s2)
    80007720:	07f00693          	li	a3,127
    80007724:	40e7873b          	subw	a4,a5,a4
    80007728:	02e6e263          	bltu	a3,a4,8000774c <consoleintr+0x68>
    8000772c:	00d00713          	li	a4,13
    80007730:	04e48063          	beq	s1,a4,80007770 <consoleintr+0x8c>
    80007734:	07f7f713          	andi	a4,a5,127
    80007738:	00e90733          	add	a4,s2,a4
    8000773c:	0017879b          	addiw	a5,a5,1
    80007740:	0af92023          	sw	a5,160(s2)
    80007744:	00970c23          	sb	s1,24(a4)
    80007748:	08f92e23          	sw	a5,156(s2)
    8000774c:	01013403          	ld	s0,16(sp)
    80007750:	01813083          	ld	ra,24(sp)
    80007754:	00813483          	ld	s1,8(sp)
    80007758:	00013903          	ld	s2,0(sp)
    8000775c:	0000e517          	auipc	a0,0xe
    80007760:	8ec50513          	addi	a0,a0,-1812 # 80015048 <cons>
    80007764:	02010113          	addi	sp,sp,32
    80007768:	00001317          	auipc	t1,0x1
    8000776c:	eb030067          	jr	-336(t1) # 80008618 <release>
    80007770:	00a00493          	li	s1,10
    80007774:	fc1ff06f          	j	80007734 <consoleintr+0x50>

0000000080007778 <consoleinit>:
    80007778:	fe010113          	addi	sp,sp,-32
    8000777c:	00113c23          	sd	ra,24(sp)
    80007780:	00813823          	sd	s0,16(sp)
    80007784:	00913423          	sd	s1,8(sp)
    80007788:	02010413          	addi	s0,sp,32
    8000778c:	0000e497          	auipc	s1,0xe
    80007790:	8bc48493          	addi	s1,s1,-1860 # 80015048 <cons>
    80007794:	00048513          	mv	a0,s1
    80007798:	00002597          	auipc	a1,0x2
    8000779c:	03058593          	addi	a1,a1,48 # 800097c8 <CONSOLE_STATUS+0x7b8>
    800077a0:	00001097          	auipc	ra,0x1
    800077a4:	d88080e7          	jalr	-632(ra) # 80008528 <initlock>
    800077a8:	00000097          	auipc	ra,0x0
    800077ac:	7ac080e7          	jalr	1964(ra) # 80007f54 <uartinit>
    800077b0:	01813083          	ld	ra,24(sp)
    800077b4:	01013403          	ld	s0,16(sp)
    800077b8:	00000797          	auipc	a5,0x0
    800077bc:	d9c78793          	addi	a5,a5,-612 # 80007554 <consoleread>
    800077c0:	0af4bc23          	sd	a5,184(s1)
    800077c4:	00000797          	auipc	a5,0x0
    800077c8:	cec78793          	addi	a5,a5,-788 # 800074b0 <consolewrite>
    800077cc:	0cf4b023          	sd	a5,192(s1)
    800077d0:	00813483          	ld	s1,8(sp)
    800077d4:	02010113          	addi	sp,sp,32
    800077d8:	00008067          	ret

00000000800077dc <console_read>:
    800077dc:	ff010113          	addi	sp,sp,-16
    800077e0:	00813423          	sd	s0,8(sp)
    800077e4:	01010413          	addi	s0,sp,16
    800077e8:	00813403          	ld	s0,8(sp)
    800077ec:	0000e317          	auipc	t1,0xe
    800077f0:	91433303          	ld	t1,-1772(t1) # 80015100 <devsw+0x10>
    800077f4:	01010113          	addi	sp,sp,16
    800077f8:	00030067          	jr	t1

00000000800077fc <console_write>:
    800077fc:	ff010113          	addi	sp,sp,-16
    80007800:	00813423          	sd	s0,8(sp)
    80007804:	01010413          	addi	s0,sp,16
    80007808:	00813403          	ld	s0,8(sp)
    8000780c:	0000e317          	auipc	t1,0xe
    80007810:	8fc33303          	ld	t1,-1796(t1) # 80015108 <devsw+0x18>
    80007814:	01010113          	addi	sp,sp,16
    80007818:	00030067          	jr	t1

000000008000781c <panic>:
    8000781c:	fe010113          	addi	sp,sp,-32
    80007820:	00113c23          	sd	ra,24(sp)
    80007824:	00813823          	sd	s0,16(sp)
    80007828:	00913423          	sd	s1,8(sp)
    8000782c:	02010413          	addi	s0,sp,32
    80007830:	00050493          	mv	s1,a0
    80007834:	00002517          	auipc	a0,0x2
    80007838:	f9c50513          	addi	a0,a0,-100 # 800097d0 <CONSOLE_STATUS+0x7c0>
    8000783c:	0000e797          	auipc	a5,0xe
    80007840:	9607a623          	sw	zero,-1684(a5) # 800151a8 <pr+0x18>
    80007844:	00000097          	auipc	ra,0x0
    80007848:	034080e7          	jalr	52(ra) # 80007878 <__printf>
    8000784c:	00048513          	mv	a0,s1
    80007850:	00000097          	auipc	ra,0x0
    80007854:	028080e7          	jalr	40(ra) # 80007878 <__printf>
    80007858:	00002517          	auipc	a0,0x2
    8000785c:	92850513          	addi	a0,a0,-1752 # 80009180 <CONSOLE_STATUS+0x170>
    80007860:	00000097          	auipc	ra,0x0
    80007864:	018080e7          	jalr	24(ra) # 80007878 <__printf>
    80007868:	00100793          	li	a5,1
    8000786c:	00004717          	auipc	a4,0x4
    80007870:	60f72623          	sw	a5,1548(a4) # 8000be78 <panicked>
    80007874:	0000006f          	j	80007874 <panic+0x58>

0000000080007878 <__printf>:
    80007878:	f3010113          	addi	sp,sp,-208
    8000787c:	08813023          	sd	s0,128(sp)
    80007880:	07313423          	sd	s3,104(sp)
    80007884:	09010413          	addi	s0,sp,144
    80007888:	05813023          	sd	s8,64(sp)
    8000788c:	08113423          	sd	ra,136(sp)
    80007890:	06913c23          	sd	s1,120(sp)
    80007894:	07213823          	sd	s2,112(sp)
    80007898:	07413023          	sd	s4,96(sp)
    8000789c:	05513c23          	sd	s5,88(sp)
    800078a0:	05613823          	sd	s6,80(sp)
    800078a4:	05713423          	sd	s7,72(sp)
    800078a8:	03913c23          	sd	s9,56(sp)
    800078ac:	03a13823          	sd	s10,48(sp)
    800078b0:	03b13423          	sd	s11,40(sp)
    800078b4:	0000e317          	auipc	t1,0xe
    800078b8:	8dc30313          	addi	t1,t1,-1828 # 80015190 <pr>
    800078bc:	01832c03          	lw	s8,24(t1)
    800078c0:	00b43423          	sd	a1,8(s0)
    800078c4:	00c43823          	sd	a2,16(s0)
    800078c8:	00d43c23          	sd	a3,24(s0)
    800078cc:	02e43023          	sd	a4,32(s0)
    800078d0:	02f43423          	sd	a5,40(s0)
    800078d4:	03043823          	sd	a6,48(s0)
    800078d8:	03143c23          	sd	a7,56(s0)
    800078dc:	00050993          	mv	s3,a0
    800078e0:	4a0c1663          	bnez	s8,80007d8c <__printf+0x514>
    800078e4:	60098c63          	beqz	s3,80007efc <__printf+0x684>
    800078e8:	0009c503          	lbu	a0,0(s3)
    800078ec:	00840793          	addi	a5,s0,8
    800078f0:	f6f43c23          	sd	a5,-136(s0)
    800078f4:	00000493          	li	s1,0
    800078f8:	22050063          	beqz	a0,80007b18 <__printf+0x2a0>
    800078fc:	00002a37          	lui	s4,0x2
    80007900:	00018ab7          	lui	s5,0x18
    80007904:	000f4b37          	lui	s6,0xf4
    80007908:	00989bb7          	lui	s7,0x989
    8000790c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007910:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007914:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007918:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000791c:	00148c9b          	addiw	s9,s1,1
    80007920:	02500793          	li	a5,37
    80007924:	01998933          	add	s2,s3,s9
    80007928:	38f51263          	bne	a0,a5,80007cac <__printf+0x434>
    8000792c:	00094783          	lbu	a5,0(s2)
    80007930:	00078c9b          	sext.w	s9,a5
    80007934:	1e078263          	beqz	a5,80007b18 <__printf+0x2a0>
    80007938:	0024849b          	addiw	s1,s1,2
    8000793c:	07000713          	li	a4,112
    80007940:	00998933          	add	s2,s3,s1
    80007944:	38e78a63          	beq	a5,a4,80007cd8 <__printf+0x460>
    80007948:	20f76863          	bltu	a4,a5,80007b58 <__printf+0x2e0>
    8000794c:	42a78863          	beq	a5,a0,80007d7c <__printf+0x504>
    80007950:	06400713          	li	a4,100
    80007954:	40e79663          	bne	a5,a4,80007d60 <__printf+0x4e8>
    80007958:	f7843783          	ld	a5,-136(s0)
    8000795c:	0007a603          	lw	a2,0(a5)
    80007960:	00878793          	addi	a5,a5,8
    80007964:	f6f43c23          	sd	a5,-136(s0)
    80007968:	42064a63          	bltz	a2,80007d9c <__printf+0x524>
    8000796c:	00a00713          	li	a4,10
    80007970:	02e677bb          	remuw	a5,a2,a4
    80007974:	00002d97          	auipc	s11,0x2
    80007978:	e84d8d93          	addi	s11,s11,-380 # 800097f8 <digits>
    8000797c:	00900593          	li	a1,9
    80007980:	0006051b          	sext.w	a0,a2
    80007984:	00000c93          	li	s9,0
    80007988:	02079793          	slli	a5,a5,0x20
    8000798c:	0207d793          	srli	a5,a5,0x20
    80007990:	00fd87b3          	add	a5,s11,a5
    80007994:	0007c783          	lbu	a5,0(a5)
    80007998:	02e656bb          	divuw	a3,a2,a4
    8000799c:	f8f40023          	sb	a5,-128(s0)
    800079a0:	14c5d863          	bge	a1,a2,80007af0 <__printf+0x278>
    800079a4:	06300593          	li	a1,99
    800079a8:	00100c93          	li	s9,1
    800079ac:	02e6f7bb          	remuw	a5,a3,a4
    800079b0:	02079793          	slli	a5,a5,0x20
    800079b4:	0207d793          	srli	a5,a5,0x20
    800079b8:	00fd87b3          	add	a5,s11,a5
    800079bc:	0007c783          	lbu	a5,0(a5)
    800079c0:	02e6d73b          	divuw	a4,a3,a4
    800079c4:	f8f400a3          	sb	a5,-127(s0)
    800079c8:	12a5f463          	bgeu	a1,a0,80007af0 <__printf+0x278>
    800079cc:	00a00693          	li	a3,10
    800079d0:	00900593          	li	a1,9
    800079d4:	02d777bb          	remuw	a5,a4,a3
    800079d8:	02079793          	slli	a5,a5,0x20
    800079dc:	0207d793          	srli	a5,a5,0x20
    800079e0:	00fd87b3          	add	a5,s11,a5
    800079e4:	0007c503          	lbu	a0,0(a5)
    800079e8:	02d757bb          	divuw	a5,a4,a3
    800079ec:	f8a40123          	sb	a0,-126(s0)
    800079f0:	48e5f263          	bgeu	a1,a4,80007e74 <__printf+0x5fc>
    800079f4:	06300513          	li	a0,99
    800079f8:	02d7f5bb          	remuw	a1,a5,a3
    800079fc:	02059593          	slli	a1,a1,0x20
    80007a00:	0205d593          	srli	a1,a1,0x20
    80007a04:	00bd85b3          	add	a1,s11,a1
    80007a08:	0005c583          	lbu	a1,0(a1)
    80007a0c:	02d7d7bb          	divuw	a5,a5,a3
    80007a10:	f8b401a3          	sb	a1,-125(s0)
    80007a14:	48e57263          	bgeu	a0,a4,80007e98 <__printf+0x620>
    80007a18:	3e700513          	li	a0,999
    80007a1c:	02d7f5bb          	remuw	a1,a5,a3
    80007a20:	02059593          	slli	a1,a1,0x20
    80007a24:	0205d593          	srli	a1,a1,0x20
    80007a28:	00bd85b3          	add	a1,s11,a1
    80007a2c:	0005c583          	lbu	a1,0(a1)
    80007a30:	02d7d7bb          	divuw	a5,a5,a3
    80007a34:	f8b40223          	sb	a1,-124(s0)
    80007a38:	46e57663          	bgeu	a0,a4,80007ea4 <__printf+0x62c>
    80007a3c:	02d7f5bb          	remuw	a1,a5,a3
    80007a40:	02059593          	slli	a1,a1,0x20
    80007a44:	0205d593          	srli	a1,a1,0x20
    80007a48:	00bd85b3          	add	a1,s11,a1
    80007a4c:	0005c583          	lbu	a1,0(a1)
    80007a50:	02d7d7bb          	divuw	a5,a5,a3
    80007a54:	f8b402a3          	sb	a1,-123(s0)
    80007a58:	46ea7863          	bgeu	s4,a4,80007ec8 <__printf+0x650>
    80007a5c:	02d7f5bb          	remuw	a1,a5,a3
    80007a60:	02059593          	slli	a1,a1,0x20
    80007a64:	0205d593          	srli	a1,a1,0x20
    80007a68:	00bd85b3          	add	a1,s11,a1
    80007a6c:	0005c583          	lbu	a1,0(a1)
    80007a70:	02d7d7bb          	divuw	a5,a5,a3
    80007a74:	f8b40323          	sb	a1,-122(s0)
    80007a78:	3eeaf863          	bgeu	s5,a4,80007e68 <__printf+0x5f0>
    80007a7c:	02d7f5bb          	remuw	a1,a5,a3
    80007a80:	02059593          	slli	a1,a1,0x20
    80007a84:	0205d593          	srli	a1,a1,0x20
    80007a88:	00bd85b3          	add	a1,s11,a1
    80007a8c:	0005c583          	lbu	a1,0(a1)
    80007a90:	02d7d7bb          	divuw	a5,a5,a3
    80007a94:	f8b403a3          	sb	a1,-121(s0)
    80007a98:	42eb7e63          	bgeu	s6,a4,80007ed4 <__printf+0x65c>
    80007a9c:	02d7f5bb          	remuw	a1,a5,a3
    80007aa0:	02059593          	slli	a1,a1,0x20
    80007aa4:	0205d593          	srli	a1,a1,0x20
    80007aa8:	00bd85b3          	add	a1,s11,a1
    80007aac:	0005c583          	lbu	a1,0(a1)
    80007ab0:	02d7d7bb          	divuw	a5,a5,a3
    80007ab4:	f8b40423          	sb	a1,-120(s0)
    80007ab8:	42ebfc63          	bgeu	s7,a4,80007ef0 <__printf+0x678>
    80007abc:	02079793          	slli	a5,a5,0x20
    80007ac0:	0207d793          	srli	a5,a5,0x20
    80007ac4:	00fd8db3          	add	s11,s11,a5
    80007ac8:	000dc703          	lbu	a4,0(s11)
    80007acc:	00a00793          	li	a5,10
    80007ad0:	00900c93          	li	s9,9
    80007ad4:	f8e404a3          	sb	a4,-119(s0)
    80007ad8:	00065c63          	bgez	a2,80007af0 <__printf+0x278>
    80007adc:	f9040713          	addi	a4,s0,-112
    80007ae0:	00f70733          	add	a4,a4,a5
    80007ae4:	02d00693          	li	a3,45
    80007ae8:	fed70823          	sb	a3,-16(a4)
    80007aec:	00078c93          	mv	s9,a5
    80007af0:	f8040793          	addi	a5,s0,-128
    80007af4:	01978cb3          	add	s9,a5,s9
    80007af8:	f7f40d13          	addi	s10,s0,-129
    80007afc:	000cc503          	lbu	a0,0(s9)
    80007b00:	fffc8c93          	addi	s9,s9,-1
    80007b04:	00000097          	auipc	ra,0x0
    80007b08:	b90080e7          	jalr	-1136(ra) # 80007694 <consputc>
    80007b0c:	ffac98e3          	bne	s9,s10,80007afc <__printf+0x284>
    80007b10:	00094503          	lbu	a0,0(s2)
    80007b14:	e00514e3          	bnez	a0,8000791c <__printf+0xa4>
    80007b18:	1a0c1663          	bnez	s8,80007cc4 <__printf+0x44c>
    80007b1c:	08813083          	ld	ra,136(sp)
    80007b20:	08013403          	ld	s0,128(sp)
    80007b24:	07813483          	ld	s1,120(sp)
    80007b28:	07013903          	ld	s2,112(sp)
    80007b2c:	06813983          	ld	s3,104(sp)
    80007b30:	06013a03          	ld	s4,96(sp)
    80007b34:	05813a83          	ld	s5,88(sp)
    80007b38:	05013b03          	ld	s6,80(sp)
    80007b3c:	04813b83          	ld	s7,72(sp)
    80007b40:	04013c03          	ld	s8,64(sp)
    80007b44:	03813c83          	ld	s9,56(sp)
    80007b48:	03013d03          	ld	s10,48(sp)
    80007b4c:	02813d83          	ld	s11,40(sp)
    80007b50:	0d010113          	addi	sp,sp,208
    80007b54:	00008067          	ret
    80007b58:	07300713          	li	a4,115
    80007b5c:	1ce78a63          	beq	a5,a4,80007d30 <__printf+0x4b8>
    80007b60:	07800713          	li	a4,120
    80007b64:	1ee79e63          	bne	a5,a4,80007d60 <__printf+0x4e8>
    80007b68:	f7843783          	ld	a5,-136(s0)
    80007b6c:	0007a703          	lw	a4,0(a5)
    80007b70:	00878793          	addi	a5,a5,8
    80007b74:	f6f43c23          	sd	a5,-136(s0)
    80007b78:	28074263          	bltz	a4,80007dfc <__printf+0x584>
    80007b7c:	00002d97          	auipc	s11,0x2
    80007b80:	c7cd8d93          	addi	s11,s11,-900 # 800097f8 <digits>
    80007b84:	00f77793          	andi	a5,a4,15
    80007b88:	00fd87b3          	add	a5,s11,a5
    80007b8c:	0007c683          	lbu	a3,0(a5)
    80007b90:	00f00613          	li	a2,15
    80007b94:	0007079b          	sext.w	a5,a4
    80007b98:	f8d40023          	sb	a3,-128(s0)
    80007b9c:	0047559b          	srliw	a1,a4,0x4
    80007ba0:	0047569b          	srliw	a3,a4,0x4
    80007ba4:	00000c93          	li	s9,0
    80007ba8:	0ee65063          	bge	a2,a4,80007c88 <__printf+0x410>
    80007bac:	00f6f693          	andi	a3,a3,15
    80007bb0:	00dd86b3          	add	a3,s11,a3
    80007bb4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007bb8:	0087d79b          	srliw	a5,a5,0x8
    80007bbc:	00100c93          	li	s9,1
    80007bc0:	f8d400a3          	sb	a3,-127(s0)
    80007bc4:	0cb67263          	bgeu	a2,a1,80007c88 <__printf+0x410>
    80007bc8:	00f7f693          	andi	a3,a5,15
    80007bcc:	00dd86b3          	add	a3,s11,a3
    80007bd0:	0006c583          	lbu	a1,0(a3)
    80007bd4:	00f00613          	li	a2,15
    80007bd8:	0047d69b          	srliw	a3,a5,0x4
    80007bdc:	f8b40123          	sb	a1,-126(s0)
    80007be0:	0047d593          	srli	a1,a5,0x4
    80007be4:	28f67e63          	bgeu	a2,a5,80007e80 <__printf+0x608>
    80007be8:	00f6f693          	andi	a3,a3,15
    80007bec:	00dd86b3          	add	a3,s11,a3
    80007bf0:	0006c503          	lbu	a0,0(a3)
    80007bf4:	0087d813          	srli	a6,a5,0x8
    80007bf8:	0087d69b          	srliw	a3,a5,0x8
    80007bfc:	f8a401a3          	sb	a0,-125(s0)
    80007c00:	28b67663          	bgeu	a2,a1,80007e8c <__printf+0x614>
    80007c04:	00f6f693          	andi	a3,a3,15
    80007c08:	00dd86b3          	add	a3,s11,a3
    80007c0c:	0006c583          	lbu	a1,0(a3)
    80007c10:	00c7d513          	srli	a0,a5,0xc
    80007c14:	00c7d69b          	srliw	a3,a5,0xc
    80007c18:	f8b40223          	sb	a1,-124(s0)
    80007c1c:	29067a63          	bgeu	a2,a6,80007eb0 <__printf+0x638>
    80007c20:	00f6f693          	andi	a3,a3,15
    80007c24:	00dd86b3          	add	a3,s11,a3
    80007c28:	0006c583          	lbu	a1,0(a3)
    80007c2c:	0107d813          	srli	a6,a5,0x10
    80007c30:	0107d69b          	srliw	a3,a5,0x10
    80007c34:	f8b402a3          	sb	a1,-123(s0)
    80007c38:	28a67263          	bgeu	a2,a0,80007ebc <__printf+0x644>
    80007c3c:	00f6f693          	andi	a3,a3,15
    80007c40:	00dd86b3          	add	a3,s11,a3
    80007c44:	0006c683          	lbu	a3,0(a3)
    80007c48:	0147d79b          	srliw	a5,a5,0x14
    80007c4c:	f8d40323          	sb	a3,-122(s0)
    80007c50:	21067663          	bgeu	a2,a6,80007e5c <__printf+0x5e4>
    80007c54:	02079793          	slli	a5,a5,0x20
    80007c58:	0207d793          	srli	a5,a5,0x20
    80007c5c:	00fd8db3          	add	s11,s11,a5
    80007c60:	000dc683          	lbu	a3,0(s11)
    80007c64:	00800793          	li	a5,8
    80007c68:	00700c93          	li	s9,7
    80007c6c:	f8d403a3          	sb	a3,-121(s0)
    80007c70:	00075c63          	bgez	a4,80007c88 <__printf+0x410>
    80007c74:	f9040713          	addi	a4,s0,-112
    80007c78:	00f70733          	add	a4,a4,a5
    80007c7c:	02d00693          	li	a3,45
    80007c80:	fed70823          	sb	a3,-16(a4)
    80007c84:	00078c93          	mv	s9,a5
    80007c88:	f8040793          	addi	a5,s0,-128
    80007c8c:	01978cb3          	add	s9,a5,s9
    80007c90:	f7f40d13          	addi	s10,s0,-129
    80007c94:	000cc503          	lbu	a0,0(s9)
    80007c98:	fffc8c93          	addi	s9,s9,-1
    80007c9c:	00000097          	auipc	ra,0x0
    80007ca0:	9f8080e7          	jalr	-1544(ra) # 80007694 <consputc>
    80007ca4:	ff9d18e3          	bne	s10,s9,80007c94 <__printf+0x41c>
    80007ca8:	0100006f          	j	80007cb8 <__printf+0x440>
    80007cac:	00000097          	auipc	ra,0x0
    80007cb0:	9e8080e7          	jalr	-1560(ra) # 80007694 <consputc>
    80007cb4:	000c8493          	mv	s1,s9
    80007cb8:	00094503          	lbu	a0,0(s2)
    80007cbc:	c60510e3          	bnez	a0,8000791c <__printf+0xa4>
    80007cc0:	e40c0ee3          	beqz	s8,80007b1c <__printf+0x2a4>
    80007cc4:	0000d517          	auipc	a0,0xd
    80007cc8:	4cc50513          	addi	a0,a0,1228 # 80015190 <pr>
    80007ccc:	00001097          	auipc	ra,0x1
    80007cd0:	94c080e7          	jalr	-1716(ra) # 80008618 <release>
    80007cd4:	e49ff06f          	j	80007b1c <__printf+0x2a4>
    80007cd8:	f7843783          	ld	a5,-136(s0)
    80007cdc:	03000513          	li	a0,48
    80007ce0:	01000d13          	li	s10,16
    80007ce4:	00878713          	addi	a4,a5,8
    80007ce8:	0007bc83          	ld	s9,0(a5)
    80007cec:	f6e43c23          	sd	a4,-136(s0)
    80007cf0:	00000097          	auipc	ra,0x0
    80007cf4:	9a4080e7          	jalr	-1628(ra) # 80007694 <consputc>
    80007cf8:	07800513          	li	a0,120
    80007cfc:	00000097          	auipc	ra,0x0
    80007d00:	998080e7          	jalr	-1640(ra) # 80007694 <consputc>
    80007d04:	00002d97          	auipc	s11,0x2
    80007d08:	af4d8d93          	addi	s11,s11,-1292 # 800097f8 <digits>
    80007d0c:	03ccd793          	srli	a5,s9,0x3c
    80007d10:	00fd87b3          	add	a5,s11,a5
    80007d14:	0007c503          	lbu	a0,0(a5)
    80007d18:	fffd0d1b          	addiw	s10,s10,-1
    80007d1c:	004c9c93          	slli	s9,s9,0x4
    80007d20:	00000097          	auipc	ra,0x0
    80007d24:	974080e7          	jalr	-1676(ra) # 80007694 <consputc>
    80007d28:	fe0d12e3          	bnez	s10,80007d0c <__printf+0x494>
    80007d2c:	f8dff06f          	j	80007cb8 <__printf+0x440>
    80007d30:	f7843783          	ld	a5,-136(s0)
    80007d34:	0007bc83          	ld	s9,0(a5)
    80007d38:	00878793          	addi	a5,a5,8
    80007d3c:	f6f43c23          	sd	a5,-136(s0)
    80007d40:	000c9a63          	bnez	s9,80007d54 <__printf+0x4dc>
    80007d44:	1080006f          	j	80007e4c <__printf+0x5d4>
    80007d48:	001c8c93          	addi	s9,s9,1
    80007d4c:	00000097          	auipc	ra,0x0
    80007d50:	948080e7          	jalr	-1720(ra) # 80007694 <consputc>
    80007d54:	000cc503          	lbu	a0,0(s9)
    80007d58:	fe0518e3          	bnez	a0,80007d48 <__printf+0x4d0>
    80007d5c:	f5dff06f          	j	80007cb8 <__printf+0x440>
    80007d60:	02500513          	li	a0,37
    80007d64:	00000097          	auipc	ra,0x0
    80007d68:	930080e7          	jalr	-1744(ra) # 80007694 <consputc>
    80007d6c:	000c8513          	mv	a0,s9
    80007d70:	00000097          	auipc	ra,0x0
    80007d74:	924080e7          	jalr	-1756(ra) # 80007694 <consputc>
    80007d78:	f41ff06f          	j	80007cb8 <__printf+0x440>
    80007d7c:	02500513          	li	a0,37
    80007d80:	00000097          	auipc	ra,0x0
    80007d84:	914080e7          	jalr	-1772(ra) # 80007694 <consputc>
    80007d88:	f31ff06f          	j	80007cb8 <__printf+0x440>
    80007d8c:	00030513          	mv	a0,t1
    80007d90:	00000097          	auipc	ra,0x0
    80007d94:	7bc080e7          	jalr	1980(ra) # 8000854c <acquire>
    80007d98:	b4dff06f          	j	800078e4 <__printf+0x6c>
    80007d9c:	40c0053b          	negw	a0,a2
    80007da0:	00a00713          	li	a4,10
    80007da4:	02e576bb          	remuw	a3,a0,a4
    80007da8:	00002d97          	auipc	s11,0x2
    80007dac:	a50d8d93          	addi	s11,s11,-1456 # 800097f8 <digits>
    80007db0:	ff700593          	li	a1,-9
    80007db4:	02069693          	slli	a3,a3,0x20
    80007db8:	0206d693          	srli	a3,a3,0x20
    80007dbc:	00dd86b3          	add	a3,s11,a3
    80007dc0:	0006c683          	lbu	a3,0(a3)
    80007dc4:	02e557bb          	divuw	a5,a0,a4
    80007dc8:	f8d40023          	sb	a3,-128(s0)
    80007dcc:	10b65e63          	bge	a2,a1,80007ee8 <__printf+0x670>
    80007dd0:	06300593          	li	a1,99
    80007dd4:	02e7f6bb          	remuw	a3,a5,a4
    80007dd8:	02069693          	slli	a3,a3,0x20
    80007ddc:	0206d693          	srli	a3,a3,0x20
    80007de0:	00dd86b3          	add	a3,s11,a3
    80007de4:	0006c683          	lbu	a3,0(a3)
    80007de8:	02e7d73b          	divuw	a4,a5,a4
    80007dec:	00200793          	li	a5,2
    80007df0:	f8d400a3          	sb	a3,-127(s0)
    80007df4:	bca5ece3          	bltu	a1,a0,800079cc <__printf+0x154>
    80007df8:	ce5ff06f          	j	80007adc <__printf+0x264>
    80007dfc:	40e007bb          	negw	a5,a4
    80007e00:	00002d97          	auipc	s11,0x2
    80007e04:	9f8d8d93          	addi	s11,s11,-1544 # 800097f8 <digits>
    80007e08:	00f7f693          	andi	a3,a5,15
    80007e0c:	00dd86b3          	add	a3,s11,a3
    80007e10:	0006c583          	lbu	a1,0(a3)
    80007e14:	ff100613          	li	a2,-15
    80007e18:	0047d69b          	srliw	a3,a5,0x4
    80007e1c:	f8b40023          	sb	a1,-128(s0)
    80007e20:	0047d59b          	srliw	a1,a5,0x4
    80007e24:	0ac75e63          	bge	a4,a2,80007ee0 <__printf+0x668>
    80007e28:	00f6f693          	andi	a3,a3,15
    80007e2c:	00dd86b3          	add	a3,s11,a3
    80007e30:	0006c603          	lbu	a2,0(a3)
    80007e34:	00f00693          	li	a3,15
    80007e38:	0087d79b          	srliw	a5,a5,0x8
    80007e3c:	f8c400a3          	sb	a2,-127(s0)
    80007e40:	d8b6e4e3          	bltu	a3,a1,80007bc8 <__printf+0x350>
    80007e44:	00200793          	li	a5,2
    80007e48:	e2dff06f          	j	80007c74 <__printf+0x3fc>
    80007e4c:	00002c97          	auipc	s9,0x2
    80007e50:	98cc8c93          	addi	s9,s9,-1652 # 800097d8 <CONSOLE_STATUS+0x7c8>
    80007e54:	02800513          	li	a0,40
    80007e58:	ef1ff06f          	j	80007d48 <__printf+0x4d0>
    80007e5c:	00700793          	li	a5,7
    80007e60:	00600c93          	li	s9,6
    80007e64:	e0dff06f          	j	80007c70 <__printf+0x3f8>
    80007e68:	00700793          	li	a5,7
    80007e6c:	00600c93          	li	s9,6
    80007e70:	c69ff06f          	j	80007ad8 <__printf+0x260>
    80007e74:	00300793          	li	a5,3
    80007e78:	00200c93          	li	s9,2
    80007e7c:	c5dff06f          	j	80007ad8 <__printf+0x260>
    80007e80:	00300793          	li	a5,3
    80007e84:	00200c93          	li	s9,2
    80007e88:	de9ff06f          	j	80007c70 <__printf+0x3f8>
    80007e8c:	00400793          	li	a5,4
    80007e90:	00300c93          	li	s9,3
    80007e94:	dddff06f          	j	80007c70 <__printf+0x3f8>
    80007e98:	00400793          	li	a5,4
    80007e9c:	00300c93          	li	s9,3
    80007ea0:	c39ff06f          	j	80007ad8 <__printf+0x260>
    80007ea4:	00500793          	li	a5,5
    80007ea8:	00400c93          	li	s9,4
    80007eac:	c2dff06f          	j	80007ad8 <__printf+0x260>
    80007eb0:	00500793          	li	a5,5
    80007eb4:	00400c93          	li	s9,4
    80007eb8:	db9ff06f          	j	80007c70 <__printf+0x3f8>
    80007ebc:	00600793          	li	a5,6
    80007ec0:	00500c93          	li	s9,5
    80007ec4:	dadff06f          	j	80007c70 <__printf+0x3f8>
    80007ec8:	00600793          	li	a5,6
    80007ecc:	00500c93          	li	s9,5
    80007ed0:	c09ff06f          	j	80007ad8 <__printf+0x260>
    80007ed4:	00800793          	li	a5,8
    80007ed8:	00700c93          	li	s9,7
    80007edc:	bfdff06f          	j	80007ad8 <__printf+0x260>
    80007ee0:	00100793          	li	a5,1
    80007ee4:	d91ff06f          	j	80007c74 <__printf+0x3fc>
    80007ee8:	00100793          	li	a5,1
    80007eec:	bf1ff06f          	j	80007adc <__printf+0x264>
    80007ef0:	00900793          	li	a5,9
    80007ef4:	00800c93          	li	s9,8
    80007ef8:	be1ff06f          	j	80007ad8 <__printf+0x260>
    80007efc:	00002517          	auipc	a0,0x2
    80007f00:	8e450513          	addi	a0,a0,-1820 # 800097e0 <CONSOLE_STATUS+0x7d0>
    80007f04:	00000097          	auipc	ra,0x0
    80007f08:	918080e7          	jalr	-1768(ra) # 8000781c <panic>

0000000080007f0c <printfinit>:
    80007f0c:	fe010113          	addi	sp,sp,-32
    80007f10:	00813823          	sd	s0,16(sp)
    80007f14:	00913423          	sd	s1,8(sp)
    80007f18:	00113c23          	sd	ra,24(sp)
    80007f1c:	02010413          	addi	s0,sp,32
    80007f20:	0000d497          	auipc	s1,0xd
    80007f24:	27048493          	addi	s1,s1,624 # 80015190 <pr>
    80007f28:	00048513          	mv	a0,s1
    80007f2c:	00002597          	auipc	a1,0x2
    80007f30:	8c458593          	addi	a1,a1,-1852 # 800097f0 <CONSOLE_STATUS+0x7e0>
    80007f34:	00000097          	auipc	ra,0x0
    80007f38:	5f4080e7          	jalr	1524(ra) # 80008528 <initlock>
    80007f3c:	01813083          	ld	ra,24(sp)
    80007f40:	01013403          	ld	s0,16(sp)
    80007f44:	0004ac23          	sw	zero,24(s1)
    80007f48:	00813483          	ld	s1,8(sp)
    80007f4c:	02010113          	addi	sp,sp,32
    80007f50:	00008067          	ret

0000000080007f54 <uartinit>:
    80007f54:	ff010113          	addi	sp,sp,-16
    80007f58:	00813423          	sd	s0,8(sp)
    80007f5c:	01010413          	addi	s0,sp,16
    80007f60:	100007b7          	lui	a5,0x10000
    80007f64:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007f68:	f8000713          	li	a4,-128
    80007f6c:	00e781a3          	sb	a4,3(a5)
    80007f70:	00300713          	li	a4,3
    80007f74:	00e78023          	sb	a4,0(a5)
    80007f78:	000780a3          	sb	zero,1(a5)
    80007f7c:	00e781a3          	sb	a4,3(a5)
    80007f80:	00700693          	li	a3,7
    80007f84:	00d78123          	sb	a3,2(a5)
    80007f88:	00e780a3          	sb	a4,1(a5)
    80007f8c:	00813403          	ld	s0,8(sp)
    80007f90:	01010113          	addi	sp,sp,16
    80007f94:	00008067          	ret

0000000080007f98 <uartputc>:
    80007f98:	00004797          	auipc	a5,0x4
    80007f9c:	ee07a783          	lw	a5,-288(a5) # 8000be78 <panicked>
    80007fa0:	00078463          	beqz	a5,80007fa8 <uartputc+0x10>
    80007fa4:	0000006f          	j	80007fa4 <uartputc+0xc>
    80007fa8:	fd010113          	addi	sp,sp,-48
    80007fac:	02813023          	sd	s0,32(sp)
    80007fb0:	00913c23          	sd	s1,24(sp)
    80007fb4:	01213823          	sd	s2,16(sp)
    80007fb8:	01313423          	sd	s3,8(sp)
    80007fbc:	02113423          	sd	ra,40(sp)
    80007fc0:	03010413          	addi	s0,sp,48
    80007fc4:	00004917          	auipc	s2,0x4
    80007fc8:	ebc90913          	addi	s2,s2,-324 # 8000be80 <uart_tx_r>
    80007fcc:	00093783          	ld	a5,0(s2)
    80007fd0:	00004497          	auipc	s1,0x4
    80007fd4:	eb848493          	addi	s1,s1,-328 # 8000be88 <uart_tx_w>
    80007fd8:	0004b703          	ld	a4,0(s1)
    80007fdc:	02078693          	addi	a3,a5,32
    80007fe0:	00050993          	mv	s3,a0
    80007fe4:	02e69c63          	bne	a3,a4,8000801c <uartputc+0x84>
    80007fe8:	00001097          	auipc	ra,0x1
    80007fec:	834080e7          	jalr	-1996(ra) # 8000881c <push_on>
    80007ff0:	00093783          	ld	a5,0(s2)
    80007ff4:	0004b703          	ld	a4,0(s1)
    80007ff8:	02078793          	addi	a5,a5,32
    80007ffc:	00e79463          	bne	a5,a4,80008004 <uartputc+0x6c>
    80008000:	0000006f          	j	80008000 <uartputc+0x68>
    80008004:	00001097          	auipc	ra,0x1
    80008008:	88c080e7          	jalr	-1908(ra) # 80008890 <pop_on>
    8000800c:	00093783          	ld	a5,0(s2)
    80008010:	0004b703          	ld	a4,0(s1)
    80008014:	02078693          	addi	a3,a5,32
    80008018:	fce688e3          	beq	a3,a4,80007fe8 <uartputc+0x50>
    8000801c:	01f77693          	andi	a3,a4,31
    80008020:	0000d597          	auipc	a1,0xd
    80008024:	19058593          	addi	a1,a1,400 # 800151b0 <uart_tx_buf>
    80008028:	00d586b3          	add	a3,a1,a3
    8000802c:	00170713          	addi	a4,a4,1
    80008030:	01368023          	sb	s3,0(a3)
    80008034:	00e4b023          	sd	a4,0(s1)
    80008038:	10000637          	lui	a2,0x10000
    8000803c:	02f71063          	bne	a4,a5,8000805c <uartputc+0xc4>
    80008040:	0340006f          	j	80008074 <uartputc+0xdc>
    80008044:	00074703          	lbu	a4,0(a4)
    80008048:	00f93023          	sd	a5,0(s2)
    8000804c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008050:	00093783          	ld	a5,0(s2)
    80008054:	0004b703          	ld	a4,0(s1)
    80008058:	00f70e63          	beq	a4,a5,80008074 <uartputc+0xdc>
    8000805c:	00564683          	lbu	a3,5(a2)
    80008060:	01f7f713          	andi	a4,a5,31
    80008064:	00e58733          	add	a4,a1,a4
    80008068:	0206f693          	andi	a3,a3,32
    8000806c:	00178793          	addi	a5,a5,1
    80008070:	fc069ae3          	bnez	a3,80008044 <uartputc+0xac>
    80008074:	02813083          	ld	ra,40(sp)
    80008078:	02013403          	ld	s0,32(sp)
    8000807c:	01813483          	ld	s1,24(sp)
    80008080:	01013903          	ld	s2,16(sp)
    80008084:	00813983          	ld	s3,8(sp)
    80008088:	03010113          	addi	sp,sp,48
    8000808c:	00008067          	ret

0000000080008090 <uartputc_sync>:
    80008090:	ff010113          	addi	sp,sp,-16
    80008094:	00813423          	sd	s0,8(sp)
    80008098:	01010413          	addi	s0,sp,16
    8000809c:	00004717          	auipc	a4,0x4
    800080a0:	ddc72703          	lw	a4,-548(a4) # 8000be78 <panicked>
    800080a4:	02071663          	bnez	a4,800080d0 <uartputc_sync+0x40>
    800080a8:	00050793          	mv	a5,a0
    800080ac:	100006b7          	lui	a3,0x10000
    800080b0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800080b4:	02077713          	andi	a4,a4,32
    800080b8:	fe070ce3          	beqz	a4,800080b0 <uartputc_sync+0x20>
    800080bc:	0ff7f793          	andi	a5,a5,255
    800080c0:	00f68023          	sb	a5,0(a3)
    800080c4:	00813403          	ld	s0,8(sp)
    800080c8:	01010113          	addi	sp,sp,16
    800080cc:	00008067          	ret
    800080d0:	0000006f          	j	800080d0 <uartputc_sync+0x40>

00000000800080d4 <uartstart>:
    800080d4:	ff010113          	addi	sp,sp,-16
    800080d8:	00813423          	sd	s0,8(sp)
    800080dc:	01010413          	addi	s0,sp,16
    800080e0:	00004617          	auipc	a2,0x4
    800080e4:	da060613          	addi	a2,a2,-608 # 8000be80 <uart_tx_r>
    800080e8:	00004517          	auipc	a0,0x4
    800080ec:	da050513          	addi	a0,a0,-608 # 8000be88 <uart_tx_w>
    800080f0:	00063783          	ld	a5,0(a2)
    800080f4:	00053703          	ld	a4,0(a0)
    800080f8:	04f70263          	beq	a4,a5,8000813c <uartstart+0x68>
    800080fc:	100005b7          	lui	a1,0x10000
    80008100:	0000d817          	auipc	a6,0xd
    80008104:	0b080813          	addi	a6,a6,176 # 800151b0 <uart_tx_buf>
    80008108:	01c0006f          	j	80008124 <uartstart+0x50>
    8000810c:	0006c703          	lbu	a4,0(a3)
    80008110:	00f63023          	sd	a5,0(a2)
    80008114:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008118:	00063783          	ld	a5,0(a2)
    8000811c:	00053703          	ld	a4,0(a0)
    80008120:	00f70e63          	beq	a4,a5,8000813c <uartstart+0x68>
    80008124:	01f7f713          	andi	a4,a5,31
    80008128:	00e806b3          	add	a3,a6,a4
    8000812c:	0055c703          	lbu	a4,5(a1)
    80008130:	00178793          	addi	a5,a5,1
    80008134:	02077713          	andi	a4,a4,32
    80008138:	fc071ae3          	bnez	a4,8000810c <uartstart+0x38>
    8000813c:	00813403          	ld	s0,8(sp)
    80008140:	01010113          	addi	sp,sp,16
    80008144:	00008067          	ret

0000000080008148 <uartgetc>:
    80008148:	ff010113          	addi	sp,sp,-16
    8000814c:	00813423          	sd	s0,8(sp)
    80008150:	01010413          	addi	s0,sp,16
    80008154:	10000737          	lui	a4,0x10000
    80008158:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000815c:	0017f793          	andi	a5,a5,1
    80008160:	00078c63          	beqz	a5,80008178 <uartgetc+0x30>
    80008164:	00074503          	lbu	a0,0(a4)
    80008168:	0ff57513          	andi	a0,a0,255
    8000816c:	00813403          	ld	s0,8(sp)
    80008170:	01010113          	addi	sp,sp,16
    80008174:	00008067          	ret
    80008178:	fff00513          	li	a0,-1
    8000817c:	ff1ff06f          	j	8000816c <uartgetc+0x24>

0000000080008180 <uartintr>:
    80008180:	100007b7          	lui	a5,0x10000
    80008184:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008188:	0017f793          	andi	a5,a5,1
    8000818c:	0a078463          	beqz	a5,80008234 <uartintr+0xb4>
    80008190:	fe010113          	addi	sp,sp,-32
    80008194:	00813823          	sd	s0,16(sp)
    80008198:	00913423          	sd	s1,8(sp)
    8000819c:	00113c23          	sd	ra,24(sp)
    800081a0:	02010413          	addi	s0,sp,32
    800081a4:	100004b7          	lui	s1,0x10000
    800081a8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800081ac:	0ff57513          	andi	a0,a0,255
    800081b0:	fffff097          	auipc	ra,0xfffff
    800081b4:	534080e7          	jalr	1332(ra) # 800076e4 <consoleintr>
    800081b8:	0054c783          	lbu	a5,5(s1)
    800081bc:	0017f793          	andi	a5,a5,1
    800081c0:	fe0794e3          	bnez	a5,800081a8 <uartintr+0x28>
    800081c4:	00004617          	auipc	a2,0x4
    800081c8:	cbc60613          	addi	a2,a2,-836 # 8000be80 <uart_tx_r>
    800081cc:	00004517          	auipc	a0,0x4
    800081d0:	cbc50513          	addi	a0,a0,-836 # 8000be88 <uart_tx_w>
    800081d4:	00063783          	ld	a5,0(a2)
    800081d8:	00053703          	ld	a4,0(a0)
    800081dc:	04f70263          	beq	a4,a5,80008220 <uartintr+0xa0>
    800081e0:	100005b7          	lui	a1,0x10000
    800081e4:	0000d817          	auipc	a6,0xd
    800081e8:	fcc80813          	addi	a6,a6,-52 # 800151b0 <uart_tx_buf>
    800081ec:	01c0006f          	j	80008208 <uartintr+0x88>
    800081f0:	0006c703          	lbu	a4,0(a3)
    800081f4:	00f63023          	sd	a5,0(a2)
    800081f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800081fc:	00063783          	ld	a5,0(a2)
    80008200:	00053703          	ld	a4,0(a0)
    80008204:	00f70e63          	beq	a4,a5,80008220 <uartintr+0xa0>
    80008208:	01f7f713          	andi	a4,a5,31
    8000820c:	00e806b3          	add	a3,a6,a4
    80008210:	0055c703          	lbu	a4,5(a1)
    80008214:	00178793          	addi	a5,a5,1
    80008218:	02077713          	andi	a4,a4,32
    8000821c:	fc071ae3          	bnez	a4,800081f0 <uartintr+0x70>
    80008220:	01813083          	ld	ra,24(sp)
    80008224:	01013403          	ld	s0,16(sp)
    80008228:	00813483          	ld	s1,8(sp)
    8000822c:	02010113          	addi	sp,sp,32
    80008230:	00008067          	ret
    80008234:	00004617          	auipc	a2,0x4
    80008238:	c4c60613          	addi	a2,a2,-948 # 8000be80 <uart_tx_r>
    8000823c:	00004517          	auipc	a0,0x4
    80008240:	c4c50513          	addi	a0,a0,-948 # 8000be88 <uart_tx_w>
    80008244:	00063783          	ld	a5,0(a2)
    80008248:	00053703          	ld	a4,0(a0)
    8000824c:	04f70263          	beq	a4,a5,80008290 <uartintr+0x110>
    80008250:	100005b7          	lui	a1,0x10000
    80008254:	0000d817          	auipc	a6,0xd
    80008258:	f5c80813          	addi	a6,a6,-164 # 800151b0 <uart_tx_buf>
    8000825c:	01c0006f          	j	80008278 <uartintr+0xf8>
    80008260:	0006c703          	lbu	a4,0(a3)
    80008264:	00f63023          	sd	a5,0(a2)
    80008268:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000826c:	00063783          	ld	a5,0(a2)
    80008270:	00053703          	ld	a4,0(a0)
    80008274:	02f70063          	beq	a4,a5,80008294 <uartintr+0x114>
    80008278:	01f7f713          	andi	a4,a5,31
    8000827c:	00e806b3          	add	a3,a6,a4
    80008280:	0055c703          	lbu	a4,5(a1)
    80008284:	00178793          	addi	a5,a5,1
    80008288:	02077713          	andi	a4,a4,32
    8000828c:	fc071ae3          	bnez	a4,80008260 <uartintr+0xe0>
    80008290:	00008067          	ret
    80008294:	00008067          	ret

0000000080008298 <kinit>:
    80008298:	fc010113          	addi	sp,sp,-64
    8000829c:	02913423          	sd	s1,40(sp)
    800082a0:	fffff7b7          	lui	a5,0xfffff
    800082a4:	0000e497          	auipc	s1,0xe
    800082a8:	f2b48493          	addi	s1,s1,-213 # 800161cf <end+0xfff>
    800082ac:	02813823          	sd	s0,48(sp)
    800082b0:	01313c23          	sd	s3,24(sp)
    800082b4:	00f4f4b3          	and	s1,s1,a5
    800082b8:	02113c23          	sd	ra,56(sp)
    800082bc:	03213023          	sd	s2,32(sp)
    800082c0:	01413823          	sd	s4,16(sp)
    800082c4:	01513423          	sd	s5,8(sp)
    800082c8:	04010413          	addi	s0,sp,64
    800082cc:	000017b7          	lui	a5,0x1
    800082d0:	01100993          	li	s3,17
    800082d4:	00f487b3          	add	a5,s1,a5
    800082d8:	01b99993          	slli	s3,s3,0x1b
    800082dc:	06f9e063          	bltu	s3,a5,8000833c <kinit+0xa4>
    800082e0:	0000da97          	auipc	s5,0xd
    800082e4:	ef0a8a93          	addi	s5,s5,-272 # 800151d0 <end>
    800082e8:	0754ec63          	bltu	s1,s5,80008360 <kinit+0xc8>
    800082ec:	0734fa63          	bgeu	s1,s3,80008360 <kinit+0xc8>
    800082f0:	00088a37          	lui	s4,0x88
    800082f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800082f8:	00004917          	auipc	s2,0x4
    800082fc:	b9890913          	addi	s2,s2,-1128 # 8000be90 <kmem>
    80008300:	00ca1a13          	slli	s4,s4,0xc
    80008304:	0140006f          	j	80008318 <kinit+0x80>
    80008308:	000017b7          	lui	a5,0x1
    8000830c:	00f484b3          	add	s1,s1,a5
    80008310:	0554e863          	bltu	s1,s5,80008360 <kinit+0xc8>
    80008314:	0534f663          	bgeu	s1,s3,80008360 <kinit+0xc8>
    80008318:	00001637          	lui	a2,0x1
    8000831c:	00100593          	li	a1,1
    80008320:	00048513          	mv	a0,s1
    80008324:	00000097          	auipc	ra,0x0
    80008328:	5e4080e7          	jalr	1508(ra) # 80008908 <__memset>
    8000832c:	00093783          	ld	a5,0(s2)
    80008330:	00f4b023          	sd	a5,0(s1)
    80008334:	00993023          	sd	s1,0(s2)
    80008338:	fd4498e3          	bne	s1,s4,80008308 <kinit+0x70>
    8000833c:	03813083          	ld	ra,56(sp)
    80008340:	03013403          	ld	s0,48(sp)
    80008344:	02813483          	ld	s1,40(sp)
    80008348:	02013903          	ld	s2,32(sp)
    8000834c:	01813983          	ld	s3,24(sp)
    80008350:	01013a03          	ld	s4,16(sp)
    80008354:	00813a83          	ld	s5,8(sp)
    80008358:	04010113          	addi	sp,sp,64
    8000835c:	00008067          	ret
    80008360:	00001517          	auipc	a0,0x1
    80008364:	4b050513          	addi	a0,a0,1200 # 80009810 <digits+0x18>
    80008368:	fffff097          	auipc	ra,0xfffff
    8000836c:	4b4080e7          	jalr	1204(ra) # 8000781c <panic>

0000000080008370 <freerange>:
    80008370:	fc010113          	addi	sp,sp,-64
    80008374:	000017b7          	lui	a5,0x1
    80008378:	02913423          	sd	s1,40(sp)
    8000837c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008380:	009504b3          	add	s1,a0,s1
    80008384:	fffff537          	lui	a0,0xfffff
    80008388:	02813823          	sd	s0,48(sp)
    8000838c:	02113c23          	sd	ra,56(sp)
    80008390:	03213023          	sd	s2,32(sp)
    80008394:	01313c23          	sd	s3,24(sp)
    80008398:	01413823          	sd	s4,16(sp)
    8000839c:	01513423          	sd	s5,8(sp)
    800083a0:	01613023          	sd	s6,0(sp)
    800083a4:	04010413          	addi	s0,sp,64
    800083a8:	00a4f4b3          	and	s1,s1,a0
    800083ac:	00f487b3          	add	a5,s1,a5
    800083b0:	06f5e463          	bltu	a1,a5,80008418 <freerange+0xa8>
    800083b4:	0000da97          	auipc	s5,0xd
    800083b8:	e1ca8a93          	addi	s5,s5,-484 # 800151d0 <end>
    800083bc:	0954e263          	bltu	s1,s5,80008440 <freerange+0xd0>
    800083c0:	01100993          	li	s3,17
    800083c4:	01b99993          	slli	s3,s3,0x1b
    800083c8:	0734fc63          	bgeu	s1,s3,80008440 <freerange+0xd0>
    800083cc:	00058a13          	mv	s4,a1
    800083d0:	00004917          	auipc	s2,0x4
    800083d4:	ac090913          	addi	s2,s2,-1344 # 8000be90 <kmem>
    800083d8:	00002b37          	lui	s6,0x2
    800083dc:	0140006f          	j	800083f0 <freerange+0x80>
    800083e0:	000017b7          	lui	a5,0x1
    800083e4:	00f484b3          	add	s1,s1,a5
    800083e8:	0554ec63          	bltu	s1,s5,80008440 <freerange+0xd0>
    800083ec:	0534fa63          	bgeu	s1,s3,80008440 <freerange+0xd0>
    800083f0:	00001637          	lui	a2,0x1
    800083f4:	00100593          	li	a1,1
    800083f8:	00048513          	mv	a0,s1
    800083fc:	00000097          	auipc	ra,0x0
    80008400:	50c080e7          	jalr	1292(ra) # 80008908 <__memset>
    80008404:	00093703          	ld	a4,0(s2)
    80008408:	016487b3          	add	a5,s1,s6
    8000840c:	00e4b023          	sd	a4,0(s1)
    80008410:	00993023          	sd	s1,0(s2)
    80008414:	fcfa76e3          	bgeu	s4,a5,800083e0 <freerange+0x70>
    80008418:	03813083          	ld	ra,56(sp)
    8000841c:	03013403          	ld	s0,48(sp)
    80008420:	02813483          	ld	s1,40(sp)
    80008424:	02013903          	ld	s2,32(sp)
    80008428:	01813983          	ld	s3,24(sp)
    8000842c:	01013a03          	ld	s4,16(sp)
    80008430:	00813a83          	ld	s5,8(sp)
    80008434:	00013b03          	ld	s6,0(sp)
    80008438:	04010113          	addi	sp,sp,64
    8000843c:	00008067          	ret
    80008440:	00001517          	auipc	a0,0x1
    80008444:	3d050513          	addi	a0,a0,976 # 80009810 <digits+0x18>
    80008448:	fffff097          	auipc	ra,0xfffff
    8000844c:	3d4080e7          	jalr	980(ra) # 8000781c <panic>

0000000080008450 <kfree>:
    80008450:	fe010113          	addi	sp,sp,-32
    80008454:	00813823          	sd	s0,16(sp)
    80008458:	00113c23          	sd	ra,24(sp)
    8000845c:	00913423          	sd	s1,8(sp)
    80008460:	02010413          	addi	s0,sp,32
    80008464:	03451793          	slli	a5,a0,0x34
    80008468:	04079c63          	bnez	a5,800084c0 <kfree+0x70>
    8000846c:	0000d797          	auipc	a5,0xd
    80008470:	d6478793          	addi	a5,a5,-668 # 800151d0 <end>
    80008474:	00050493          	mv	s1,a0
    80008478:	04f56463          	bltu	a0,a5,800084c0 <kfree+0x70>
    8000847c:	01100793          	li	a5,17
    80008480:	01b79793          	slli	a5,a5,0x1b
    80008484:	02f57e63          	bgeu	a0,a5,800084c0 <kfree+0x70>
    80008488:	00001637          	lui	a2,0x1
    8000848c:	00100593          	li	a1,1
    80008490:	00000097          	auipc	ra,0x0
    80008494:	478080e7          	jalr	1144(ra) # 80008908 <__memset>
    80008498:	00004797          	auipc	a5,0x4
    8000849c:	9f878793          	addi	a5,a5,-1544 # 8000be90 <kmem>
    800084a0:	0007b703          	ld	a4,0(a5)
    800084a4:	01813083          	ld	ra,24(sp)
    800084a8:	01013403          	ld	s0,16(sp)
    800084ac:	00e4b023          	sd	a4,0(s1)
    800084b0:	0097b023          	sd	s1,0(a5)
    800084b4:	00813483          	ld	s1,8(sp)
    800084b8:	02010113          	addi	sp,sp,32
    800084bc:	00008067          	ret
    800084c0:	00001517          	auipc	a0,0x1
    800084c4:	35050513          	addi	a0,a0,848 # 80009810 <digits+0x18>
    800084c8:	fffff097          	auipc	ra,0xfffff
    800084cc:	354080e7          	jalr	852(ra) # 8000781c <panic>

00000000800084d0 <kalloc>:
    800084d0:	fe010113          	addi	sp,sp,-32
    800084d4:	00813823          	sd	s0,16(sp)
    800084d8:	00913423          	sd	s1,8(sp)
    800084dc:	00113c23          	sd	ra,24(sp)
    800084e0:	02010413          	addi	s0,sp,32
    800084e4:	00004797          	auipc	a5,0x4
    800084e8:	9ac78793          	addi	a5,a5,-1620 # 8000be90 <kmem>
    800084ec:	0007b483          	ld	s1,0(a5)
    800084f0:	02048063          	beqz	s1,80008510 <kalloc+0x40>
    800084f4:	0004b703          	ld	a4,0(s1)
    800084f8:	00001637          	lui	a2,0x1
    800084fc:	00500593          	li	a1,5
    80008500:	00048513          	mv	a0,s1
    80008504:	00e7b023          	sd	a4,0(a5)
    80008508:	00000097          	auipc	ra,0x0
    8000850c:	400080e7          	jalr	1024(ra) # 80008908 <__memset>
    80008510:	01813083          	ld	ra,24(sp)
    80008514:	01013403          	ld	s0,16(sp)
    80008518:	00048513          	mv	a0,s1
    8000851c:	00813483          	ld	s1,8(sp)
    80008520:	02010113          	addi	sp,sp,32
    80008524:	00008067          	ret

0000000080008528 <initlock>:
    80008528:	ff010113          	addi	sp,sp,-16
    8000852c:	00813423          	sd	s0,8(sp)
    80008530:	01010413          	addi	s0,sp,16
    80008534:	00813403          	ld	s0,8(sp)
    80008538:	00b53423          	sd	a1,8(a0)
    8000853c:	00052023          	sw	zero,0(a0)
    80008540:	00053823          	sd	zero,16(a0)
    80008544:	01010113          	addi	sp,sp,16
    80008548:	00008067          	ret

000000008000854c <acquire>:
    8000854c:	fe010113          	addi	sp,sp,-32
    80008550:	00813823          	sd	s0,16(sp)
    80008554:	00913423          	sd	s1,8(sp)
    80008558:	00113c23          	sd	ra,24(sp)
    8000855c:	01213023          	sd	s2,0(sp)
    80008560:	02010413          	addi	s0,sp,32
    80008564:	00050493          	mv	s1,a0
    80008568:	10002973          	csrr	s2,sstatus
    8000856c:	100027f3          	csrr	a5,sstatus
    80008570:	ffd7f793          	andi	a5,a5,-3
    80008574:	10079073          	csrw	sstatus,a5
    80008578:	fffff097          	auipc	ra,0xfffff
    8000857c:	8e4080e7          	jalr	-1820(ra) # 80006e5c <mycpu>
    80008580:	07852783          	lw	a5,120(a0)
    80008584:	06078e63          	beqz	a5,80008600 <acquire+0xb4>
    80008588:	fffff097          	auipc	ra,0xfffff
    8000858c:	8d4080e7          	jalr	-1836(ra) # 80006e5c <mycpu>
    80008590:	07852783          	lw	a5,120(a0)
    80008594:	0004a703          	lw	a4,0(s1)
    80008598:	0017879b          	addiw	a5,a5,1
    8000859c:	06f52c23          	sw	a5,120(a0)
    800085a0:	04071063          	bnez	a4,800085e0 <acquire+0x94>
    800085a4:	00100713          	li	a4,1
    800085a8:	00070793          	mv	a5,a4
    800085ac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800085b0:	0007879b          	sext.w	a5,a5
    800085b4:	fe079ae3          	bnez	a5,800085a8 <acquire+0x5c>
    800085b8:	0ff0000f          	fence
    800085bc:	fffff097          	auipc	ra,0xfffff
    800085c0:	8a0080e7          	jalr	-1888(ra) # 80006e5c <mycpu>
    800085c4:	01813083          	ld	ra,24(sp)
    800085c8:	01013403          	ld	s0,16(sp)
    800085cc:	00a4b823          	sd	a0,16(s1)
    800085d0:	00013903          	ld	s2,0(sp)
    800085d4:	00813483          	ld	s1,8(sp)
    800085d8:	02010113          	addi	sp,sp,32
    800085dc:	00008067          	ret
    800085e0:	0104b903          	ld	s2,16(s1)
    800085e4:	fffff097          	auipc	ra,0xfffff
    800085e8:	878080e7          	jalr	-1928(ra) # 80006e5c <mycpu>
    800085ec:	faa91ce3          	bne	s2,a0,800085a4 <acquire+0x58>
    800085f0:	00001517          	auipc	a0,0x1
    800085f4:	22850513          	addi	a0,a0,552 # 80009818 <digits+0x20>
    800085f8:	fffff097          	auipc	ra,0xfffff
    800085fc:	224080e7          	jalr	548(ra) # 8000781c <panic>
    80008600:	00195913          	srli	s2,s2,0x1
    80008604:	fffff097          	auipc	ra,0xfffff
    80008608:	858080e7          	jalr	-1960(ra) # 80006e5c <mycpu>
    8000860c:	00197913          	andi	s2,s2,1
    80008610:	07252e23          	sw	s2,124(a0)
    80008614:	f75ff06f          	j	80008588 <acquire+0x3c>

0000000080008618 <release>:
    80008618:	fe010113          	addi	sp,sp,-32
    8000861c:	00813823          	sd	s0,16(sp)
    80008620:	00113c23          	sd	ra,24(sp)
    80008624:	00913423          	sd	s1,8(sp)
    80008628:	01213023          	sd	s2,0(sp)
    8000862c:	02010413          	addi	s0,sp,32
    80008630:	00052783          	lw	a5,0(a0)
    80008634:	00079a63          	bnez	a5,80008648 <release+0x30>
    80008638:	00001517          	auipc	a0,0x1
    8000863c:	1e850513          	addi	a0,a0,488 # 80009820 <digits+0x28>
    80008640:	fffff097          	auipc	ra,0xfffff
    80008644:	1dc080e7          	jalr	476(ra) # 8000781c <panic>
    80008648:	01053903          	ld	s2,16(a0)
    8000864c:	00050493          	mv	s1,a0
    80008650:	fffff097          	auipc	ra,0xfffff
    80008654:	80c080e7          	jalr	-2036(ra) # 80006e5c <mycpu>
    80008658:	fea910e3          	bne	s2,a0,80008638 <release+0x20>
    8000865c:	0004b823          	sd	zero,16(s1)
    80008660:	0ff0000f          	fence
    80008664:	0f50000f          	fence	iorw,ow
    80008668:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000866c:	ffffe097          	auipc	ra,0xffffe
    80008670:	7f0080e7          	jalr	2032(ra) # 80006e5c <mycpu>
    80008674:	100027f3          	csrr	a5,sstatus
    80008678:	0027f793          	andi	a5,a5,2
    8000867c:	04079a63          	bnez	a5,800086d0 <release+0xb8>
    80008680:	07852783          	lw	a5,120(a0)
    80008684:	02f05e63          	blez	a5,800086c0 <release+0xa8>
    80008688:	fff7871b          	addiw	a4,a5,-1
    8000868c:	06e52c23          	sw	a4,120(a0)
    80008690:	00071c63          	bnez	a4,800086a8 <release+0x90>
    80008694:	07c52783          	lw	a5,124(a0)
    80008698:	00078863          	beqz	a5,800086a8 <release+0x90>
    8000869c:	100027f3          	csrr	a5,sstatus
    800086a0:	0027e793          	ori	a5,a5,2
    800086a4:	10079073          	csrw	sstatus,a5
    800086a8:	01813083          	ld	ra,24(sp)
    800086ac:	01013403          	ld	s0,16(sp)
    800086b0:	00813483          	ld	s1,8(sp)
    800086b4:	00013903          	ld	s2,0(sp)
    800086b8:	02010113          	addi	sp,sp,32
    800086bc:	00008067          	ret
    800086c0:	00001517          	auipc	a0,0x1
    800086c4:	18050513          	addi	a0,a0,384 # 80009840 <digits+0x48>
    800086c8:	fffff097          	auipc	ra,0xfffff
    800086cc:	154080e7          	jalr	340(ra) # 8000781c <panic>
    800086d0:	00001517          	auipc	a0,0x1
    800086d4:	15850513          	addi	a0,a0,344 # 80009828 <digits+0x30>
    800086d8:	fffff097          	auipc	ra,0xfffff
    800086dc:	144080e7          	jalr	324(ra) # 8000781c <panic>

00000000800086e0 <holding>:
    800086e0:	00052783          	lw	a5,0(a0)
    800086e4:	00079663          	bnez	a5,800086f0 <holding+0x10>
    800086e8:	00000513          	li	a0,0
    800086ec:	00008067          	ret
    800086f0:	fe010113          	addi	sp,sp,-32
    800086f4:	00813823          	sd	s0,16(sp)
    800086f8:	00913423          	sd	s1,8(sp)
    800086fc:	00113c23          	sd	ra,24(sp)
    80008700:	02010413          	addi	s0,sp,32
    80008704:	01053483          	ld	s1,16(a0)
    80008708:	ffffe097          	auipc	ra,0xffffe
    8000870c:	754080e7          	jalr	1876(ra) # 80006e5c <mycpu>
    80008710:	01813083          	ld	ra,24(sp)
    80008714:	01013403          	ld	s0,16(sp)
    80008718:	40a48533          	sub	a0,s1,a0
    8000871c:	00153513          	seqz	a0,a0
    80008720:	00813483          	ld	s1,8(sp)
    80008724:	02010113          	addi	sp,sp,32
    80008728:	00008067          	ret

000000008000872c <push_off>:
    8000872c:	fe010113          	addi	sp,sp,-32
    80008730:	00813823          	sd	s0,16(sp)
    80008734:	00113c23          	sd	ra,24(sp)
    80008738:	00913423          	sd	s1,8(sp)
    8000873c:	02010413          	addi	s0,sp,32
    80008740:	100024f3          	csrr	s1,sstatus
    80008744:	100027f3          	csrr	a5,sstatus
    80008748:	ffd7f793          	andi	a5,a5,-3
    8000874c:	10079073          	csrw	sstatus,a5
    80008750:	ffffe097          	auipc	ra,0xffffe
    80008754:	70c080e7          	jalr	1804(ra) # 80006e5c <mycpu>
    80008758:	07852783          	lw	a5,120(a0)
    8000875c:	02078663          	beqz	a5,80008788 <push_off+0x5c>
    80008760:	ffffe097          	auipc	ra,0xffffe
    80008764:	6fc080e7          	jalr	1788(ra) # 80006e5c <mycpu>
    80008768:	07852783          	lw	a5,120(a0)
    8000876c:	01813083          	ld	ra,24(sp)
    80008770:	01013403          	ld	s0,16(sp)
    80008774:	0017879b          	addiw	a5,a5,1
    80008778:	06f52c23          	sw	a5,120(a0)
    8000877c:	00813483          	ld	s1,8(sp)
    80008780:	02010113          	addi	sp,sp,32
    80008784:	00008067          	ret
    80008788:	0014d493          	srli	s1,s1,0x1
    8000878c:	ffffe097          	auipc	ra,0xffffe
    80008790:	6d0080e7          	jalr	1744(ra) # 80006e5c <mycpu>
    80008794:	0014f493          	andi	s1,s1,1
    80008798:	06952e23          	sw	s1,124(a0)
    8000879c:	fc5ff06f          	j	80008760 <push_off+0x34>

00000000800087a0 <pop_off>:
    800087a0:	ff010113          	addi	sp,sp,-16
    800087a4:	00813023          	sd	s0,0(sp)
    800087a8:	00113423          	sd	ra,8(sp)
    800087ac:	01010413          	addi	s0,sp,16
    800087b0:	ffffe097          	auipc	ra,0xffffe
    800087b4:	6ac080e7          	jalr	1708(ra) # 80006e5c <mycpu>
    800087b8:	100027f3          	csrr	a5,sstatus
    800087bc:	0027f793          	andi	a5,a5,2
    800087c0:	04079663          	bnez	a5,8000880c <pop_off+0x6c>
    800087c4:	07852783          	lw	a5,120(a0)
    800087c8:	02f05a63          	blez	a5,800087fc <pop_off+0x5c>
    800087cc:	fff7871b          	addiw	a4,a5,-1
    800087d0:	06e52c23          	sw	a4,120(a0)
    800087d4:	00071c63          	bnez	a4,800087ec <pop_off+0x4c>
    800087d8:	07c52783          	lw	a5,124(a0)
    800087dc:	00078863          	beqz	a5,800087ec <pop_off+0x4c>
    800087e0:	100027f3          	csrr	a5,sstatus
    800087e4:	0027e793          	ori	a5,a5,2
    800087e8:	10079073          	csrw	sstatus,a5
    800087ec:	00813083          	ld	ra,8(sp)
    800087f0:	00013403          	ld	s0,0(sp)
    800087f4:	01010113          	addi	sp,sp,16
    800087f8:	00008067          	ret
    800087fc:	00001517          	auipc	a0,0x1
    80008800:	04450513          	addi	a0,a0,68 # 80009840 <digits+0x48>
    80008804:	fffff097          	auipc	ra,0xfffff
    80008808:	018080e7          	jalr	24(ra) # 8000781c <panic>
    8000880c:	00001517          	auipc	a0,0x1
    80008810:	01c50513          	addi	a0,a0,28 # 80009828 <digits+0x30>
    80008814:	fffff097          	auipc	ra,0xfffff
    80008818:	008080e7          	jalr	8(ra) # 8000781c <panic>

000000008000881c <push_on>:
    8000881c:	fe010113          	addi	sp,sp,-32
    80008820:	00813823          	sd	s0,16(sp)
    80008824:	00113c23          	sd	ra,24(sp)
    80008828:	00913423          	sd	s1,8(sp)
    8000882c:	02010413          	addi	s0,sp,32
    80008830:	100024f3          	csrr	s1,sstatus
    80008834:	100027f3          	csrr	a5,sstatus
    80008838:	0027e793          	ori	a5,a5,2
    8000883c:	10079073          	csrw	sstatus,a5
    80008840:	ffffe097          	auipc	ra,0xffffe
    80008844:	61c080e7          	jalr	1564(ra) # 80006e5c <mycpu>
    80008848:	07852783          	lw	a5,120(a0)
    8000884c:	02078663          	beqz	a5,80008878 <push_on+0x5c>
    80008850:	ffffe097          	auipc	ra,0xffffe
    80008854:	60c080e7          	jalr	1548(ra) # 80006e5c <mycpu>
    80008858:	07852783          	lw	a5,120(a0)
    8000885c:	01813083          	ld	ra,24(sp)
    80008860:	01013403          	ld	s0,16(sp)
    80008864:	0017879b          	addiw	a5,a5,1
    80008868:	06f52c23          	sw	a5,120(a0)
    8000886c:	00813483          	ld	s1,8(sp)
    80008870:	02010113          	addi	sp,sp,32
    80008874:	00008067          	ret
    80008878:	0014d493          	srli	s1,s1,0x1
    8000887c:	ffffe097          	auipc	ra,0xffffe
    80008880:	5e0080e7          	jalr	1504(ra) # 80006e5c <mycpu>
    80008884:	0014f493          	andi	s1,s1,1
    80008888:	06952e23          	sw	s1,124(a0)
    8000888c:	fc5ff06f          	j	80008850 <push_on+0x34>

0000000080008890 <pop_on>:
    80008890:	ff010113          	addi	sp,sp,-16
    80008894:	00813023          	sd	s0,0(sp)
    80008898:	00113423          	sd	ra,8(sp)
    8000889c:	01010413          	addi	s0,sp,16
    800088a0:	ffffe097          	auipc	ra,0xffffe
    800088a4:	5bc080e7          	jalr	1468(ra) # 80006e5c <mycpu>
    800088a8:	100027f3          	csrr	a5,sstatus
    800088ac:	0027f793          	andi	a5,a5,2
    800088b0:	04078463          	beqz	a5,800088f8 <pop_on+0x68>
    800088b4:	07852783          	lw	a5,120(a0)
    800088b8:	02f05863          	blez	a5,800088e8 <pop_on+0x58>
    800088bc:	fff7879b          	addiw	a5,a5,-1
    800088c0:	06f52c23          	sw	a5,120(a0)
    800088c4:	07853783          	ld	a5,120(a0)
    800088c8:	00079863          	bnez	a5,800088d8 <pop_on+0x48>
    800088cc:	100027f3          	csrr	a5,sstatus
    800088d0:	ffd7f793          	andi	a5,a5,-3
    800088d4:	10079073          	csrw	sstatus,a5
    800088d8:	00813083          	ld	ra,8(sp)
    800088dc:	00013403          	ld	s0,0(sp)
    800088e0:	01010113          	addi	sp,sp,16
    800088e4:	00008067          	ret
    800088e8:	00001517          	auipc	a0,0x1
    800088ec:	f8050513          	addi	a0,a0,-128 # 80009868 <digits+0x70>
    800088f0:	fffff097          	auipc	ra,0xfffff
    800088f4:	f2c080e7          	jalr	-212(ra) # 8000781c <panic>
    800088f8:	00001517          	auipc	a0,0x1
    800088fc:	f5050513          	addi	a0,a0,-176 # 80009848 <digits+0x50>
    80008900:	fffff097          	auipc	ra,0xfffff
    80008904:	f1c080e7          	jalr	-228(ra) # 8000781c <panic>

0000000080008908 <__memset>:
    80008908:	ff010113          	addi	sp,sp,-16
    8000890c:	00813423          	sd	s0,8(sp)
    80008910:	01010413          	addi	s0,sp,16
    80008914:	1a060e63          	beqz	a2,80008ad0 <__memset+0x1c8>
    80008918:	40a007b3          	neg	a5,a0
    8000891c:	0077f793          	andi	a5,a5,7
    80008920:	00778693          	addi	a3,a5,7
    80008924:	00b00813          	li	a6,11
    80008928:	0ff5f593          	andi	a1,a1,255
    8000892c:	fff6071b          	addiw	a4,a2,-1
    80008930:	1b06e663          	bltu	a3,a6,80008adc <__memset+0x1d4>
    80008934:	1cd76463          	bltu	a4,a3,80008afc <__memset+0x1f4>
    80008938:	1a078e63          	beqz	a5,80008af4 <__memset+0x1ec>
    8000893c:	00b50023          	sb	a1,0(a0)
    80008940:	00100713          	li	a4,1
    80008944:	1ae78463          	beq	a5,a4,80008aec <__memset+0x1e4>
    80008948:	00b500a3          	sb	a1,1(a0)
    8000894c:	00200713          	li	a4,2
    80008950:	1ae78a63          	beq	a5,a4,80008b04 <__memset+0x1fc>
    80008954:	00b50123          	sb	a1,2(a0)
    80008958:	00300713          	li	a4,3
    8000895c:	18e78463          	beq	a5,a4,80008ae4 <__memset+0x1dc>
    80008960:	00b501a3          	sb	a1,3(a0)
    80008964:	00400713          	li	a4,4
    80008968:	1ae78263          	beq	a5,a4,80008b0c <__memset+0x204>
    8000896c:	00b50223          	sb	a1,4(a0)
    80008970:	00500713          	li	a4,5
    80008974:	1ae78063          	beq	a5,a4,80008b14 <__memset+0x20c>
    80008978:	00b502a3          	sb	a1,5(a0)
    8000897c:	00700713          	li	a4,7
    80008980:	18e79e63          	bne	a5,a4,80008b1c <__memset+0x214>
    80008984:	00b50323          	sb	a1,6(a0)
    80008988:	00700e93          	li	t4,7
    8000898c:	00859713          	slli	a4,a1,0x8
    80008990:	00e5e733          	or	a4,a1,a4
    80008994:	01059e13          	slli	t3,a1,0x10
    80008998:	01c76e33          	or	t3,a4,t3
    8000899c:	01859313          	slli	t1,a1,0x18
    800089a0:	006e6333          	or	t1,t3,t1
    800089a4:	02059893          	slli	a7,a1,0x20
    800089a8:	40f60e3b          	subw	t3,a2,a5
    800089ac:	011368b3          	or	a7,t1,a7
    800089b0:	02859813          	slli	a6,a1,0x28
    800089b4:	0108e833          	or	a6,a7,a6
    800089b8:	03059693          	slli	a3,a1,0x30
    800089bc:	003e589b          	srliw	a7,t3,0x3
    800089c0:	00d866b3          	or	a3,a6,a3
    800089c4:	03859713          	slli	a4,a1,0x38
    800089c8:	00389813          	slli	a6,a7,0x3
    800089cc:	00f507b3          	add	a5,a0,a5
    800089d0:	00e6e733          	or	a4,a3,a4
    800089d4:	000e089b          	sext.w	a7,t3
    800089d8:	00f806b3          	add	a3,a6,a5
    800089dc:	00e7b023          	sd	a4,0(a5)
    800089e0:	00878793          	addi	a5,a5,8
    800089e4:	fed79ce3          	bne	a5,a3,800089dc <__memset+0xd4>
    800089e8:	ff8e7793          	andi	a5,t3,-8
    800089ec:	0007871b          	sext.w	a4,a5
    800089f0:	01d787bb          	addw	a5,a5,t4
    800089f4:	0ce88e63          	beq	a7,a4,80008ad0 <__memset+0x1c8>
    800089f8:	00f50733          	add	a4,a0,a5
    800089fc:	00b70023          	sb	a1,0(a4)
    80008a00:	0017871b          	addiw	a4,a5,1
    80008a04:	0cc77663          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008a08:	00e50733          	add	a4,a0,a4
    80008a0c:	00b70023          	sb	a1,0(a4)
    80008a10:	0027871b          	addiw	a4,a5,2
    80008a14:	0ac77e63          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008a18:	00e50733          	add	a4,a0,a4
    80008a1c:	00b70023          	sb	a1,0(a4)
    80008a20:	0037871b          	addiw	a4,a5,3
    80008a24:	0ac77663          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008a28:	00e50733          	add	a4,a0,a4
    80008a2c:	00b70023          	sb	a1,0(a4)
    80008a30:	0047871b          	addiw	a4,a5,4
    80008a34:	08c77e63          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008a38:	00e50733          	add	a4,a0,a4
    80008a3c:	00b70023          	sb	a1,0(a4)
    80008a40:	0057871b          	addiw	a4,a5,5
    80008a44:	08c77663          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008a48:	00e50733          	add	a4,a0,a4
    80008a4c:	00b70023          	sb	a1,0(a4)
    80008a50:	0067871b          	addiw	a4,a5,6
    80008a54:	06c77e63          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008a58:	00e50733          	add	a4,a0,a4
    80008a5c:	00b70023          	sb	a1,0(a4)
    80008a60:	0077871b          	addiw	a4,a5,7
    80008a64:	06c77663          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008a68:	00e50733          	add	a4,a0,a4
    80008a6c:	00b70023          	sb	a1,0(a4)
    80008a70:	0087871b          	addiw	a4,a5,8
    80008a74:	04c77e63          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008a78:	00e50733          	add	a4,a0,a4
    80008a7c:	00b70023          	sb	a1,0(a4)
    80008a80:	0097871b          	addiw	a4,a5,9
    80008a84:	04c77663          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008a88:	00e50733          	add	a4,a0,a4
    80008a8c:	00b70023          	sb	a1,0(a4)
    80008a90:	00a7871b          	addiw	a4,a5,10
    80008a94:	02c77e63          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008a98:	00e50733          	add	a4,a0,a4
    80008a9c:	00b70023          	sb	a1,0(a4)
    80008aa0:	00b7871b          	addiw	a4,a5,11
    80008aa4:	02c77663          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008aa8:	00e50733          	add	a4,a0,a4
    80008aac:	00b70023          	sb	a1,0(a4)
    80008ab0:	00c7871b          	addiw	a4,a5,12
    80008ab4:	00c77e63          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008ab8:	00e50733          	add	a4,a0,a4
    80008abc:	00b70023          	sb	a1,0(a4)
    80008ac0:	00d7879b          	addiw	a5,a5,13
    80008ac4:	00c7f663          	bgeu	a5,a2,80008ad0 <__memset+0x1c8>
    80008ac8:	00f507b3          	add	a5,a0,a5
    80008acc:	00b78023          	sb	a1,0(a5)
    80008ad0:	00813403          	ld	s0,8(sp)
    80008ad4:	01010113          	addi	sp,sp,16
    80008ad8:	00008067          	ret
    80008adc:	00b00693          	li	a3,11
    80008ae0:	e55ff06f          	j	80008934 <__memset+0x2c>
    80008ae4:	00300e93          	li	t4,3
    80008ae8:	ea5ff06f          	j	8000898c <__memset+0x84>
    80008aec:	00100e93          	li	t4,1
    80008af0:	e9dff06f          	j	8000898c <__memset+0x84>
    80008af4:	00000e93          	li	t4,0
    80008af8:	e95ff06f          	j	8000898c <__memset+0x84>
    80008afc:	00000793          	li	a5,0
    80008b00:	ef9ff06f          	j	800089f8 <__memset+0xf0>
    80008b04:	00200e93          	li	t4,2
    80008b08:	e85ff06f          	j	8000898c <__memset+0x84>
    80008b0c:	00400e93          	li	t4,4
    80008b10:	e7dff06f          	j	8000898c <__memset+0x84>
    80008b14:	00500e93          	li	t4,5
    80008b18:	e75ff06f          	j	8000898c <__memset+0x84>
    80008b1c:	00600e93          	li	t4,6
    80008b20:	e6dff06f          	j	8000898c <__memset+0x84>

0000000080008b24 <__memmove>:
    80008b24:	ff010113          	addi	sp,sp,-16
    80008b28:	00813423          	sd	s0,8(sp)
    80008b2c:	01010413          	addi	s0,sp,16
    80008b30:	0e060863          	beqz	a2,80008c20 <__memmove+0xfc>
    80008b34:	fff6069b          	addiw	a3,a2,-1
    80008b38:	0006881b          	sext.w	a6,a3
    80008b3c:	0ea5e863          	bltu	a1,a0,80008c2c <__memmove+0x108>
    80008b40:	00758713          	addi	a4,a1,7
    80008b44:	00a5e7b3          	or	a5,a1,a0
    80008b48:	40a70733          	sub	a4,a4,a0
    80008b4c:	0077f793          	andi	a5,a5,7
    80008b50:	00f73713          	sltiu	a4,a4,15
    80008b54:	00174713          	xori	a4,a4,1
    80008b58:	0017b793          	seqz	a5,a5
    80008b5c:	00e7f7b3          	and	a5,a5,a4
    80008b60:	10078863          	beqz	a5,80008c70 <__memmove+0x14c>
    80008b64:	00900793          	li	a5,9
    80008b68:	1107f463          	bgeu	a5,a6,80008c70 <__memmove+0x14c>
    80008b6c:	0036581b          	srliw	a6,a2,0x3
    80008b70:	fff8081b          	addiw	a6,a6,-1
    80008b74:	02081813          	slli	a6,a6,0x20
    80008b78:	01d85893          	srli	a7,a6,0x1d
    80008b7c:	00858813          	addi	a6,a1,8
    80008b80:	00058793          	mv	a5,a1
    80008b84:	00050713          	mv	a4,a0
    80008b88:	01088833          	add	a6,a7,a6
    80008b8c:	0007b883          	ld	a7,0(a5)
    80008b90:	00878793          	addi	a5,a5,8
    80008b94:	00870713          	addi	a4,a4,8
    80008b98:	ff173c23          	sd	a7,-8(a4)
    80008b9c:	ff0798e3          	bne	a5,a6,80008b8c <__memmove+0x68>
    80008ba0:	ff867713          	andi	a4,a2,-8
    80008ba4:	02071793          	slli	a5,a4,0x20
    80008ba8:	0207d793          	srli	a5,a5,0x20
    80008bac:	00f585b3          	add	a1,a1,a5
    80008bb0:	40e686bb          	subw	a3,a3,a4
    80008bb4:	00f507b3          	add	a5,a0,a5
    80008bb8:	06e60463          	beq	a2,a4,80008c20 <__memmove+0xfc>
    80008bbc:	0005c703          	lbu	a4,0(a1)
    80008bc0:	00e78023          	sb	a4,0(a5)
    80008bc4:	04068e63          	beqz	a3,80008c20 <__memmove+0xfc>
    80008bc8:	0015c603          	lbu	a2,1(a1)
    80008bcc:	00100713          	li	a4,1
    80008bd0:	00c780a3          	sb	a2,1(a5)
    80008bd4:	04e68663          	beq	a3,a4,80008c20 <__memmove+0xfc>
    80008bd8:	0025c603          	lbu	a2,2(a1)
    80008bdc:	00200713          	li	a4,2
    80008be0:	00c78123          	sb	a2,2(a5)
    80008be4:	02e68e63          	beq	a3,a4,80008c20 <__memmove+0xfc>
    80008be8:	0035c603          	lbu	a2,3(a1)
    80008bec:	00300713          	li	a4,3
    80008bf0:	00c781a3          	sb	a2,3(a5)
    80008bf4:	02e68663          	beq	a3,a4,80008c20 <__memmove+0xfc>
    80008bf8:	0045c603          	lbu	a2,4(a1)
    80008bfc:	00400713          	li	a4,4
    80008c00:	00c78223          	sb	a2,4(a5)
    80008c04:	00e68e63          	beq	a3,a4,80008c20 <__memmove+0xfc>
    80008c08:	0055c603          	lbu	a2,5(a1)
    80008c0c:	00500713          	li	a4,5
    80008c10:	00c782a3          	sb	a2,5(a5)
    80008c14:	00e68663          	beq	a3,a4,80008c20 <__memmove+0xfc>
    80008c18:	0065c703          	lbu	a4,6(a1)
    80008c1c:	00e78323          	sb	a4,6(a5)
    80008c20:	00813403          	ld	s0,8(sp)
    80008c24:	01010113          	addi	sp,sp,16
    80008c28:	00008067          	ret
    80008c2c:	02061713          	slli	a4,a2,0x20
    80008c30:	02075713          	srli	a4,a4,0x20
    80008c34:	00e587b3          	add	a5,a1,a4
    80008c38:	f0f574e3          	bgeu	a0,a5,80008b40 <__memmove+0x1c>
    80008c3c:	02069613          	slli	a2,a3,0x20
    80008c40:	02065613          	srli	a2,a2,0x20
    80008c44:	fff64613          	not	a2,a2
    80008c48:	00e50733          	add	a4,a0,a4
    80008c4c:	00c78633          	add	a2,a5,a2
    80008c50:	fff7c683          	lbu	a3,-1(a5)
    80008c54:	fff78793          	addi	a5,a5,-1
    80008c58:	fff70713          	addi	a4,a4,-1
    80008c5c:	00d70023          	sb	a3,0(a4)
    80008c60:	fec798e3          	bne	a5,a2,80008c50 <__memmove+0x12c>
    80008c64:	00813403          	ld	s0,8(sp)
    80008c68:	01010113          	addi	sp,sp,16
    80008c6c:	00008067          	ret
    80008c70:	02069713          	slli	a4,a3,0x20
    80008c74:	02075713          	srli	a4,a4,0x20
    80008c78:	00170713          	addi	a4,a4,1
    80008c7c:	00e50733          	add	a4,a0,a4
    80008c80:	00050793          	mv	a5,a0
    80008c84:	0005c683          	lbu	a3,0(a1)
    80008c88:	00178793          	addi	a5,a5,1
    80008c8c:	00158593          	addi	a1,a1,1
    80008c90:	fed78fa3          	sb	a3,-1(a5)
    80008c94:	fee798e3          	bne	a5,a4,80008c84 <__memmove+0x160>
    80008c98:	f89ff06f          	j	80008c20 <__memmove+0xfc>
	...
